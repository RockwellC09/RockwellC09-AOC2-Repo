//
//  ViewController.h
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"


@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    IBOutlet UITextView *textView;
    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *swipeRight;
}

-(IBAction)onClick:(id)sender;

@end
