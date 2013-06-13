//
//  porkRibs.m
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "porkRibs.h"

@implementation porkRibs

//synthesize to create get and set methods
@synthesize typeMeat, meatTypeStr, lbs, hoursPerLb;
-(id)init {
    self = [super init];
    if(self != nil) {
        //set defualts
        [self setLbs:0];
        [self setTypeMeat:LEAN];
        [self setNumberRibs:3];
        [self setMeatTypeStr:nil];
        [self setHoursPerLb:0.8];
        [self setRibStyle:@"Kansas City"];
    }
    return self;
}

//set and output rib style
-(NSString*)styleRib {
    NSString *ribStyleText = [NSString stringWithFormat:@"You are cooking %i %@ style pork rib(s).", self.numberRibs,self.ribStyle];

    return ribStyleText;
}

//calculate cooking time for your pork ribs
-(NSString*)calcCookingTime {
    if(typeMeat == LEAN) {
        [self setMeatTypeStr:@"lean"];
        [self setCookTimeHours:(hoursPerLb * lbs + 1)];
    } else if(typeMeat == FATTY) {
        [self setMeatTypeStr:@"fatty"];
        [self setCookTimeHours:(hoursPerLb * lbs + 3)];
    } else {
        NSLog(@"Improper meat type.");
    }
    NSString *cookTimeText = [NSString stringWithFormat: @"Your %i rack(s) of pork ribs weigh %i pounds and needs to cook for %.02f hours.", self.numberRibs, self.lbs, self.cookTimeHours];
    return cookTimeText;
}

@end
