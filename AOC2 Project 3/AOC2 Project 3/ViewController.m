//
//  ViewController.m
//  AOC2 Project 3
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender {
    UIButton *button = (UIButton*)sender;
    
    if (button.tag == 0) {
        //check to see if the add event button was clicked and open second view
        AddEventViewController *secondView = [[AddEventViewController alloc] initWithNibName:@"AddEvent" bundle:nil];
        if (secondView != nil) {
            //clear text from textView
            secondView.delegate = self;
            [self presentViewController:secondView animated:true completion:nil];
        }
    }
}

-(void)Save:(NSString*)text :(NSString*)date {
    NSString *output = [NSString stringWithFormat:@"New Event: %@ \n%@", text, date];
    textView.text = output;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
