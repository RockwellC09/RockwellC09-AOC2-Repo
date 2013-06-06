//
//  baseRibs.m
//  AOC2 Project 1
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "baseRibs.h"

@implementation baseRibs

//synthesize to create get and set methods 
@synthesize numberRibs, cookTimeHours, ribStyle;

-(id)init {
    self = [super init];
    if(self != nil) {
        numberRibs = 0;
        [self setRibStyle:nil];
        [self setCookTimeHours:0];
    }
    return self;
};

//set and output rib style
-(NSString*)styleRib {
    NSString *ribStyleText = [[NSString alloc] init];
    ribStyleText = [NSString stringWithFormat:@"You are cooking %@ style ribs.", self.ribStyle];
    return ribStyleText;
};

//calculate cooking time for my ribs
-(NSString*)calcCookingTime {
    NSString *cookString = [NSString stringWithFormat :@"This is the cooking time in hours %.02f", cookTimeHours];
    return cookString;
}

@end
