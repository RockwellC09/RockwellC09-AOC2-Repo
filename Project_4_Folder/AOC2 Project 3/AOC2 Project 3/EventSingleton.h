//
//  EventSingleton.h
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/26/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventSingleton : NSObject

+(EventSingleton*)GetInstance;

@property (nonatomic, strong)NSString *dateString;
@property (nonatomic, strong)NSString *eventString;
@property BOOL isAddingEvent;

-(NSString*)getText:(NSString*)text;
@end
