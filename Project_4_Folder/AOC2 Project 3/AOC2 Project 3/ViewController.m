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
    
    //check to see if the add event lable was swiped to the right and open the second view
    AddEventViewController *secondView = [[AddEventViewController alloc] initWithNibName:@"AddEvent" bundle:nil];
    if (secondView != nil) {
        
        [self presentViewController:secondView animated:true completion:nil];
    }

}

-(IBAction)onClick:(id)sender {
    UIButton *button = (UIButton*)sender;
    if (button != nil) {
        // set up defualts
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        NSString *eventsText = textView.text;
        [defaults setObject:eventsText forKey:@"events"];
        
        // save the default data
        [defaults synchronize];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
