//
//  baseRibs.h
//  AOC2 Project 2
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseRibs : NSObject
{
    int ribEnum;
}

typedef enum {
    BEEF,
    PORK,
    LAMB
} ribEnum;

// information needed for cooking or barbequing the ribs. 

@property int numberRibs;
@property (nonatomic, retain) NSString *ribStyle;
@property float cookTimeHours;

//initialize
-(id)init;

//set and output rib style
-(NSString*)styleRib;

//calculate cooking time for my ribs
-(NSString*)calcCookingTime;
@end
