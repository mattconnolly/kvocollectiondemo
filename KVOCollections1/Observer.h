//
//  Observer.h
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@class Group;

@interface Observer : NSObject
{
    NSMutableArray* _observing;
}

- (void)observePerson:(Person*)person;
- (void)observeGroup:(Group*)group;

@end
