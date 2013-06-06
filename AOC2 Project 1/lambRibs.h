//
//  lambRibs.h
//  AOC2 Project 1
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "baseRibs.h"

@interface lambRibs : baseRibs
{
    int rackSize;
}

typedef enum {
    HALF_RACK,
    FULL_RACK
} rackSize;

@property int ribSize;
@property (nonatomic, retain) NSString *ribSizeStr;
@property int lbs;
@property float hoursPerLb;

@end
