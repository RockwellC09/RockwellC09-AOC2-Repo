//
//  ViewController.m
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"
#import "EventSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    //check for user defaults and load them if they exist
    if (![[NSUserDefaults standardUserDefaults] valueForKey:@"events"]) {
        // do nothing if default doesn't exist
    } else {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSString *eventsText = [defaults objectForKey:@"events"];
        
        textView.text = eventsText;
    }
    
    // see if the user swipes the add event label to the right and respond accordingly
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:swipeRight];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated {
    if([[EventSingleton GetInstance] isAddingEvent] == true) {
        // check to see if the example text is in the text field and clear it out if it is
        NSString *dummyText = @"All the events go here";
        if ([textView.text isEqualToString:dummyText]) {
            textView.text = @"";
        }
        // create a mutable string to append the event text to the text view
        NSMutableString *eventText = [[NSMutableString alloc] initWithString:textView.text];
        [eventText appendString:[[EventSingleton GetInstance] getText]];
        textView.text = eventText;
        [[EventSingleton GetInstance]setIsAddingEvent:FALSE];
    }
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer {
    
    // check to see if the add event lable was swiped to the right and open the second view
    AddEventViewController *secondView = [[AddEventViewController alloc] initWithNibName:@"AddEvent" bundle:nil];
    if (secondView != nil) {
        // add a page transition to the views
        secondView.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
        
        // show add events view
        [self presentViewController:secondView animated:true completion:nil];
    }

}

-(IBAction)onClick:(id)sender {
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        if (button.tag == 1) {
            //check to see if there's data to be saved
            NSString *dummyText = @"All the events go here";
            if ([textView.text isEqualToString:dummyText]) {
                UIAlertView *noSaveDataAlert = [[UIAlertView alloc] initWithTitle:@"No Data" message:@"There's no data to saved" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                [noSaveDataAlert show];
            } else {
                // set up defualts
                NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                NSString *eventsText = textView.text;
                [defaults setObject:eventsText forKey:@"events"];
                
                // save the default data
                [defaults synchronize];
            
                // let the user know their data was saved
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Data Saved!" message:nil delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                [alert show];
            }
        } else if (button.tag == 2) {
            // check to see if the dummy text is present and tell the user there's no data to delete
            NSString *dummyText = @"All the events go here";
            if ([textView.text isEqualToString:dummyText]) {
                UIAlertView *noDataAlert = [[UIAlertView alloc] initWithTitle:@"No Data" message:@"There's no data to deleted" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                [noDataAlert show];
            } else {
                // if the dummy text is not present, show the delete alert to confirm data deletion
                UIAlertView *deleteAlert = [[UIAlertView alloc] initWithTitle:@"Are you sure?" message:@"This will delete all your data." delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
                [deleteAlert show];
            }
        }
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        //delete user defaults
        NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
        NSDictionary * dict = [defaults dictionaryRepresentation];
        for (id key in dict) {
            [defaults removeObjectForKey:key];
        }
        // erase the default data
        [defaults synchronize];

        textView.text = @"All the events go here";
    } else {
        //do nothing
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
