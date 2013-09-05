//
//  Group.h
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

@interface Group : NSObject
{
    NSMutableArray* _members;
}

@property (nonatomic,readonly) NSMutableArray* members;

// Key Value Observing
//- (NSUInteger)countOfMembers;
//- (Person*)objectInMembersAtIndex:(NSUInteger)index;
//- (NSUInteger)countOfMembers;
//- (Person*)objectInMembersAtIndex:(NSUInteger)index;
//- (NSArray*)membersAtIndexes:(NSIndexSet *)indexes;
//- (void)insertObject:(Person *)object inMembersAtIndex:(NSUInteger)index;
//- (void)insertMembers:(NSArray *)array atIndexes:(NSIndexSet *)indexes;
//- (void)removeObjectFromMembersAtIndex:(NSUInteger)index;
//- (void)removeMembersAtIndexes:(NSIndexSet *)indexes;
//
//// Key Value Coding
//- (void)insertInMembers:(Person*)person;

@end
