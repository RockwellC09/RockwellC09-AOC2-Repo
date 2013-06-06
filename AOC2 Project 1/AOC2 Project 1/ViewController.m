//
//  ViewController.m
//  AOC2 Project 1
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //label for the title
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 35.0f)];
    titleLabel.text = @"Barbecue Ribs";
    titleLabel.backgroundColor = [UIColor colorWithRed:0.212 green:0.212 blue:0.212 alpha:1]; /*#363636*/
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    //set the lbs for my beef ribs and send it through my rib cooking factory
    beefRibs * cookBeefRibs = (beefRibs*)[ribCookingFactory cookRibs:BEEF];
    [cookBeefRibs setLbs:10];
    
    //beef ribs title label
    beefTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 40.0f, 310.0f, 35.0f)];
    beefTitleLabel.text = @"Beef Ribs";
    beefTitleLabel.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    beefTitleLabel.textColor = [UIColor whiteColor];
    beefTitleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:beefTitleLabel];
    
    //label used to output the style of ribs for the beef ribs
    beefLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 75.0f, 300.0f, 50.0f)];
    beefLabel1.numberOfLines = 2;
    beefLabel1.textAlignment = NSTextAlignmentCenter;
    beefLabel1.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1]; /*#ebebeb*/
    beefLabel1.textColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    beefLabel1.text = [cookBeefRibs styleRib];;
    [self.view addSubview:beefLabel1];
    
    
    //label used to output the cooking time for the beef ribs
    beefLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 125.0f, 300.0f, 50.0f)];
    beefLabel2.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    beefLabel2.text = [cookBeefRibs calcCookingTime];
    beefLabel2.textColor = [UIColor whiteColor];
    beefLabel2.textAlignment = NSTextAlignmentCenter;
    beefLabel2.numberOfLines = 2;
    [self.view addSubview:beefLabel2];
    
    //set the lbs for my pork ribs and send it through my rib cooking factory
    porkRibs * cookPorkRibs = (porkRibs*)[ribCookingFactory cookRibs:PORK];
    [cookPorkRibs setLbs:9];
    
    //pork ribs title label
    porkTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 180.0f, 310.0f, 35.0f)];
    porkTitleLabel.text = @"Pork Ribs";
    porkTitleLabel.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    porkTitleLabel.textColor = [UIColor whiteColor];
    porkTitleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:porkTitleLabel];
    
    //label used to output the style of ribs for the pork ribs
    porkLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 215.0f, 300.0f, 50.0f)];
    porkLabel1.numberOfLines = 2;
    porkLabel1.textAlignment = NSTextAlignmentCenter;
    porkLabel1.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1]; /*#ebebeb*/
    porkLabel1.textColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    porkLabel1.text = [cookPorkRibs styleRib];;
    [self.view addSubview:porkLabel1];
    
    
    //label used to output the cooking time for the pork ribs
    porkLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 265.0f, 300.0f, 50.0f)];
    porkLabel2.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    porkLabel2.text = [cookPorkRibs calcCookingTime];
    porkLabel2.textColor = [UIColor whiteColor];
    porkLabel2.textAlignment = NSTextAlignmentCenter;
    porkLabel2.numberOfLines = 2;
    [self.view addSubview:porkLabel2];
    
    //lamb ribs title label
    lambTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 320.0f, 310.0f, 35.0f)];
    lambTitleLabel.text = @"Lamb Ribs";
    lambTitleLabel.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    lambTitleLabel.textColor = [UIColor whiteColor];
    lambTitleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lambTitleLabel];
    
    //set the lbs for my lamb ribs and send it through my rib cooking factory
        lambRibs * cookLambRibs = (lambRibs*)[ribCookingFactory cookRibs:LAMB];
    [cookLambRibs setLbs:7];
    
    //label used to output the style of ribs for the lamb ribs
    lambLabel1 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 355.0f, 300.0f, 50.0f)];
    lambLabel1.numberOfLines = 2;
    lambLabel1.textAlignment = NSTextAlignmentCenter;
    lambLabel1.backgroundColor = [UIColor colorWithRed:0.922 green:0.922 blue:0.922 alpha:1]; /*#ebebeb*/
    lambLabel1.textColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    lambLabel1.text = [cookLambRibs styleRib];;
    [self.view addSubview:lambLabel1];
    
    
    //label used to output the cooking time for the lamb ribs
    lambLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 405.0f, 300.0f, 50.0f)];
    lambLabel2.backgroundColor = [UIColor colorWithRed:0.196 green:0.392 blue:0.529 alpha:1]; /*#326487*/
    lambLabel2.text = [cookLambRibs calcCookingTime];
    lambLabel2.textColor = [UIColor whiteColor];
    lambLabel2.textAlignment = NSTextAlignmentCenter;
    lambLabel2.numberOfLines = 2;
    [self.view addSubview:lambLabel2];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
