//
//  beefRibs.m
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "beefRibs.h"

@implementation beefRibs

@synthesize lbs, hoursPerLb;

// initialize for beefRibs
-(id)init {
    self = [super init];
    if(self != nil) {
        [self setLbs:0];
        [self setHoursPerLb:1];
        [self setCookTimeHours:0];
        [self setNumberRibs:2];
        [self setRibStyle:@"Memphis"];
    }
    return self;
}

//set and output rib style
-(NSString*)styleRib {
    NSString *ribStyleText = [NSString stringWithFormat:@"You are cooking %i %@ style beef rib(s).", self.numberRibs,self.ribStyle];
    return ribStyleText;
}

//calculate cooking time for your beef ribs
-(NSString*)calcCookingTime {
    [self setCookTimeHours:(hoursPerLb * lbs + 1)];
    NSString *cookTimeText = [NSString stringWithFormat: @"Your %i rack(s) of beef ribs weigh %i pounds and needs to cook for %.02f hours.", self.numberRibs, self.lbs, self.cookTimeHours];
    return cookTimeText;
}
@end
