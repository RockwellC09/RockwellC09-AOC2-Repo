//
//  ViewController.h
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ribCookingFactory.h"

@interface ViewController : UIViewController
{
    IBOutlet UIButton *beefButton;
    IBOutlet UIButton *porkButton;
    IBOutlet UIButton *lambButton;
    IBOutlet UIStepper *stepper;
    IBOutlet UIStepper *stepper2;
    IBOutlet UILabel *poundsLabel;
    IBOutlet UIButton *subButton;
    IBOutlet UITextField *cookText;
    IBOutlet UISegmentedControl *segControl;
    
}

-(IBAction)onClick:(id)sender;

@end
