//
//  EventSingleton.m
//  AOC2 Project 4
//
//  Created by Christopher Rockwell on 6/26/13.
//  Copyright (c) 2013 Christopher Rockwell. All rights reserved.
//

#import "EventSingleton.h"

@implementation EventSingleton

@synthesize dateString;
@synthesize eventString;
@synthesize isAddingEvent;

static EventSingleton *_instance = nil;

+(EventSingleton*)GetInstance {
    if(_instance == nil) {
        [[self alloc] init];
    }
    
    return _instance;
}

+(id)alloc {
    _instance = [super alloc];
    
    return _instance;
}

-(id)init {
    if(self = [super init]) {
        isAddingEvent = false;
    }
    
    return self;
}

-(NSString*)getText:(NSString*)text {
    NSString *eventText = [NSString stringWithFormat:@"%@ \n %@ \n \n", eventString, dateString];
    return eventText;
}
@end
