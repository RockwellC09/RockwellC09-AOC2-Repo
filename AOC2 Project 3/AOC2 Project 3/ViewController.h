//
//  ViewController.h
//  AOC2 Project 3
//
//  Created by Christopher Rockwell on 6/20/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEventDelegate>
{
    IBOutlet UITextView *textView;
}

-(IBAction)onClick:(id)sender;

@end
