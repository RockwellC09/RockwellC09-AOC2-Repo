//
//  AddEventViewController.h
//  AOC2 Project 3
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddEventDelegate <NSObject>

@required 
-(void)Save:(NSString*)text :(NSString*)date;

@end

@interface AddEventViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    id<AddEventDelegate> delegate;
}

-(IBAction)onClick:(id)sender;

@property (strong) id<AddEventDelegate> delegate;
@end