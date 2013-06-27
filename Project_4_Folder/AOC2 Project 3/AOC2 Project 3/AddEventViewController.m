//
//  AddEventViewController.m
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "AddEventViewController.h"
#import "EventSingleton.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)onClick:(id)sender {
    UIButton *button = (UIButton*)sender;
    
    // close the keyboard
    if (button.tag == 2) {
        [textField resignFirstResponder];
    }
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer{
    // dismiss add event view
    
    //check to see if the event name was entered
    if(textField.text.length > 0) {
        //format date
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"MMM d, yyyy h:mm:ss a"];
        NSString *date = [dateFormatter stringFromDate:datePicker.date];
        
        // set the date and event in the singleton
        [[EventSingleton GetInstance] setDateString:date];
        [[EventSingleton GetInstance] setEventString:textField.text];
        
        [[EventSingleton GetInstance] setIsAddingEvent:true];
        
        [self dismissViewControllerAnimated:true completion:nil];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No Event Name" message:@"Please enter an event name" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (void)viewDidLoad
{
    // see if the user swipes the add event label to the left and respond accordingly
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)
                 ];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:swipeLeft];
    
    datePicker.minimumDate = [NSDate date];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
