//
//  ribCookingFactory.h
//  AOC2 Project 2
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

//cook the ribs based on the type
+(baseRibs *)cookRibs: (int)ribType;

@end
