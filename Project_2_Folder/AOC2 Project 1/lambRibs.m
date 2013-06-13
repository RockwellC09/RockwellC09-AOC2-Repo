//
//  lambRibs.m
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "lambRibs.h"

@implementation lambRibs

//synthesize to create get and set methods
@synthesize lbs, hoursPerLb;
-(id)init {
    self = [super init];
    if(self != nil) {
        //[self setRibSize:HALF_RACK];
        //[self setRibSizeStr:nil];
        [self setLbs:0];
        [self setNumberRibs:1];
        [self setHoursPerLb:.6f];
        [self setRibStyle:@"Asian"];
    }
    return self;
}

//set and output rib style
-(NSString*)styleRib {
    NSString *ribStyleText = [NSString stringWithFormat:@"You are cooking %i %@ style lamb rib(s).", self.numberRibs,self.ribStyle];

    return ribStyleText;
}

//calculate cooking time for your pork ribs
-(NSString*)calcCookingTime {
    [self setCookTimeHours:(hoursPerLb * lbs + 1)];
//    if(ribSize == HALF_RACK) {
//        [self setRibSizeStr: @"half"];
//        [self setCookTimeHours:(hoursPerLb * lbs / 2)];
//    } else if(ribSize == FULL_RACK) {
//        [self setRibSizeStr: @"full"];
//        [self setCookTimeHours:(hoursPerLb * lbs + 1)];
//    } else {
//        NSLog(@"Improper rib size");
//    }
    NSString *cookTimeText = [NSString stringWithFormat: @"Your %i rack(s) of lamb ribs weigh %i pounds and needs to cook for %.02f hours.", self.numberRibs, self.lbs, self.cookTimeHours];
    return cookTimeText;
}

@end
