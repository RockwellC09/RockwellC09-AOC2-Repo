//
//  AddEventViewController.m
//  AOC2 Project 3
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize delegate;

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
    
    // if the save button is clicked run my custom delegate
    if (button.tag == 1) {
        //format date
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"MMM d, yyyy h:mm:ss a"];
        NSString *date = [dateFormatter stringFromDate:datePicker.date];
        
        [self dismissViewControllerAnimated:true completion:nil]; 
        [delegate Save:textField.text :date];
    }
    
    // close the keyboard
    if (button.tag == 2) {
        [textField resignFirstResponder];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
