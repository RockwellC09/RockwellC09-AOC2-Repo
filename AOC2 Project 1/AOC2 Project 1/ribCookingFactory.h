//
//  ribCookingFactory.h
//  AOC2 Project 1
//
//  Created by Christopher Rockwell on 6/5/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseRibs.h"
#import "beefRibs.h"
#import "porkRibs.h"
#import "lambRibs.h"

@interface ribCookingFactory : NSObject

+(baseRibs *)cookRibs: (int)ribType;

@end
