//
//  main.c
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#include <CoreFoundation/CoreFoundation.h>
#import "Observer.h"
#import "Person.h"
#import "Group.h"
#include <objc/runtime.h>

int main(int argc, const char * argv[])
{
    Observer* observer = [[Observer alloc] init];
    Person* person = [[Person alloc] init];
    
    [observer observePerson:person];
    
    NSString* foo = @"Foo";
    person.name = @"Matt";
    person.name = foo;
    person.name = foo;
    [person setName:@"bob"];
    
    Group* group = [[Group alloc] init];
    [observer observeGroup:group];
    
    // key value observing insert (collection property)
//    [group insertObject:person inMembersAtIndex:0];
//
//    // key value coding insert (collection property via keypath)
//    person = [[Person alloc] initWithName:@"Bob"];
//    [group insertValue:person inPropertyWithKey:@"members"];
    
    // mutable array proxy
    person = [[Person alloc] initWithName:@"Harry"];
//    NSMutableArray* members = [group mutableArrayValueForKey:@"members"];
    NSMutableArray* members = group.members;
    [members addObject:person];
    
    NSLog(@"count = %d", (int)group.members.count);
    NSLog(@"count = %d", (int)[[group valueForKeyPath:@"members.@sum.height"] integerValue]);
//
//    [group removeMembersAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [group countOfMembers])]];
    
    return 0;
}
