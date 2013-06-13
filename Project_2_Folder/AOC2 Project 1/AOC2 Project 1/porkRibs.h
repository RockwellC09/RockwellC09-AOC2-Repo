//
//  porkRibs.h
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "baseRibs.h"

@interface porkRibs : baseRibs
{
    int meatType;
}

typedef enum {
    LEAN,
    FATTY
} meatType;

@property int typeMeat;
@property (nonatomic, retain) NSString *meatTypeStr;
@property int lbs;
@property float hoursPerLb;

@end
