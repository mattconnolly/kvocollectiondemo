//
//  Group.m
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//
// see docs: https://developer.apple.com/library/ios/DOCUMENTATION/Cocoa/Conceptual/KeyValueCoding/Articles/AccessorConventions.html#//apple_ref/doc/uid/20002174-178830-BAJEDEFB

#import "Group.h"

@implementation Group

//@dynamic members;

- (id)init
{
    self = [super init];
    if (self) {
        _members = [NSMutableArray array];
    }
    return self;
}

//// -countOf<Key>
//- (NSUInteger)countOfMembers
//{
//    return self.members.count;
//}
//
//// -(id)objectIn<Key>AtIndex:
//- (Person*)objectInMembersAtIndex:(NSUInteger)index;
//{
//    return [self.members objectAtIndex:index];
//}
//
//// -(NSArray*)<key>AtIndexes:
//- (NSArray*)membersAtIndexes:(NSIndexSet *)indexes;
//{
//    return [self.members objectsAtIndexes:indexes];
//}
//
//// -insertObject:in<Key>AtIndex:
//- (void)insertObject:(Person *)object inMembersAtIndex:(NSUInteger)index
//{
//    [self.members insertObject:object atIndex:index];
//}
//
//// -insert<Key>:atIndexes
//- (void)insertMembers:(NSArray *)array atIndexes:(NSIndexSet *)indexes
//{
//    [self.members insertObjects:array atIndexes:indexes];
//}
//
//// -removeObjectFrom<Key>AtIndex
//- (void)removeObjectFromMembersAtIndex:(NSUInteger)index
//{
//    [self.members removeObjectAtIndex:index];
//}
//
//// -remove<Key>AtIndexes
//- (void)removeMembersAtIndexes:(NSIndexSet *)indexes
//{
//    [self.members removeObjectsAtIndexes:indexes];
//}
//
//
//// key-value-coding method allows 
//- (void)insertInMembers:(Person*)person
//{
//    [self insertObject:person inMembersAtIndex:self.members.count];
//}

- (NSMutableArray*)members
{
    return [self mutableArrayValueForKey:@"members"];
}

@end
