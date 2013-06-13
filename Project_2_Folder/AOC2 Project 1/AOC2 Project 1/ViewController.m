//
//  ViewController.m
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"
#import "AboutMeViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set radius of custom submit button
    subButton.layer.cornerRadius = 10;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender {
    UIButton *button = (UIButton*)sender;
    
    //set the value of the quantity stepper
    int stepVal = stepper.value;
    //set the value of the pounds stepper
    int stepVal2 = stepper2.value;
    
    //set the value of the segmented control index
    int segIndex = segControl.selectedSegmentIndex;
    
    if (segIndex == 0) {
        self.view.backgroundColor = [UIColor whiteColor];
    } else if (segIndex == 1) {
        self.view.backgroundColor = [UIColor colorWithRed:0.78 green:0.78 blue:0.78 alpha:1]; /*#c7c7c7*/
    } else if (segIndex == 2) {
        self.view.backgroundColor = [UIColor colorWithRed:0.659 green:0.553 blue:0.447 alpha:1]; /*#a88d72*/
    } else if (segIndex == 3) {
        self.view.backgroundColor = [UIColor colorWithRed:0.643 green:0.576 blue:0.729 alpha:1]; /*#a493ba*/
    }
    
    //set pounds label to stepper value
    poundsLabel.text = [NSString stringWithFormat:@"%i", stepVal2];
    
    //check to see which button is disable to update the quantity of ribs when the stepper is clicked
    if (beefButton.enabled == false && button.tag != 5) {
        beefRibs * cookBeefRibs = (beefRibs*)[ribCookingFactory cookRibs:BEEF];
        [cookBeefRibs setNumberRibs:stepVal];
        cookText.text = [cookBeefRibs styleRib];
    } else if (porkButton.enabled == false && button.tag != 5) {
        porkRibs * cookPorkRibs = (porkRibs*)[ribCookingFactory cookRibs:PORK];
        [cookPorkRibs setNumberRibs:stepVal];
        cookText.text = [cookPorkRibs styleRib];
    } else if (lambButton.enabled == false && button.tag != 5) {
        lambRibs * cookLambRibs = (lambRibs*)[ribCookingFactory cookRibs:LAMB];
        [cookLambRibs setNumberRibs:stepVal];
        cookText.text = [cookLambRibs styleRib];
    } else {
        //do nothing
    }
    
    if (button.tag == 5) {
        //checking for the info button click to open the second view
        AboutMeViewController *secondView = [[AboutMeViewController alloc]
                                             initWithNibName:@"AboutMeView" bundle:nil];
        if (secondView != nil) {
            [self presentViewController:secondView animated:true completion:nil];
        }
    }
    
    //check for the button tag to determine which button was pressed
    if (button.tag == 0) {
        //set the lbs and qty for my beef ribs and send it to text field
        beefRibs * cookBeefRibs = (beefRibs*)[ribCookingFactory cookRibs:BEEF];
        [cookBeefRibs setNumberRibs:stepVal];
        cookText.text = [cookBeefRibs styleRib];
        //disable and enable the correct buttons
        beefButton.enabled = false;
        porkButton.enabled = true;
        lambButton.enabled = true;
    } else if (button.tag == 1) {
        //set the lbs and qty for my pork ribs and send it to text field
        porkRibs * cookPorkRibs = (porkRibs*)[ribCookingFactory cookRibs:PORK];
        [cookPorkRibs setNumberRibs:stepVal];
        cookText.text = [cookPorkRibs styleRib];
        //disable and enable the correct buttons
        beefButton.enabled = true;
        porkButton.enabled = false;
        lambButton.enabled = true;
    } else if (button.tag == 2) {
        //set the lbs and qty for my lamb ribs and send it to text field
        lambRibs * cookLambRibs = (lambRibs*)[ribCookingFactory cookRibs:LAMB];
        [cookLambRibs setNumberRibs:stepVal];
        cookText.text = [cookLambRibs styleRib];
        //disable and enable the correct buttons
        beefButton.enabled = true;
        porkButton.enabled = true;
        lambButton.enabled = false;
    } else {
        //do nothing
    }
    
    //check to see if calculate button was clicked and output info to text field
    if (button.tag == 4) {
        //check to see which button is false or selected to know what to output
        if (beefButton.enabled == false) {
            beefRibs * cookBeefRibs = (beefRibs*)[ribCookingFactory cookRibs:BEEF];
            //set rib lbs to the value of the pounds stepper
            [cookBeefRibs setLbs:stepVal2];
            [cookBeefRibs setNumberRibs:stepVal];
            cookText.text = [cookBeefRibs calcCookingTime];
        } else if (porkButton.enabled == false) {
            porkRibs * cookPorkRibs = (porkRibs*)[ribCookingFactory cookRibs:PORK];
            //set rib lbs to the value of the pounds stepper
            [cookPorkRibs setLbs:stepVal2];
            [cookPorkRibs setNumberRibs:stepVal];
            cookText.text = [cookPorkRibs calcCookingTime];
        } else if (lambButton.enabled == false) {
            lambRibs * cookLambRibs = (lambRibs*)[ribCookingFactory cookRibs:LAMB];
            //set rib lbs to the value of the pounds stepper
            [cookLambRibs setLbs:stepVal2];
            [cookLambRibs setNumberRibs:stepVal];
            cookText.text = [cookLambRibs calcCookingTime];
        } else {
            //do nothing
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
