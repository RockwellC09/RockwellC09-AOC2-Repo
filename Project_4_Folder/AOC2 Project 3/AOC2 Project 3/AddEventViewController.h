//
//  AddEventViewController.h
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *swipeLeft;
}

-(IBAction)onClick:(id)sender;

@end