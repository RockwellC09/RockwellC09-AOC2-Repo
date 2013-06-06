//
//  ribCookingFactory.m
//  AOC2 Project 1
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "ribCookingFactory.h"

@implementation ribCookingFactory

+(baseRibs *)cookRibs: (int)ribType {
    if(ribType == BEEF) {
        return [[beefRibs alloc] init];
    } else if(ribType == PORK) {
        return [[porkRibs alloc] init];
    } else if(ribType == LAMB) {
        return [[lambRibs alloc] init];
    } else return nil;
}

@end
