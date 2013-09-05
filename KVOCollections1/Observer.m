//
//  Observer.m
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#import "Observer.h"
#import "Person.h"
#import "Group.h"

@implementation Observer

- (id)init
{
    self = [super init];
    if (self) {
        _observing = [NSMutableArray array];
    }
    return self;
}

- (void)dealloc
{
    for (NSObject* object in _observing) {
        if ([object isKindOfClass:[Person class]]) {
            [object removeObserver:self forKeyPath:@"name"];
            [object removeObserver:self forKeyPath:@"backwards"];
        } else if ([object isKindOfClass:[Group class]]) {
            [object removeObserver:self forKeyPath:@"members"];
        }
    }
}

- (void)observePerson:(Person*)person;
{
    [_observing addObject:person];
    [person addObserver:self
             forKeyPath:@"name"
                options:0
                context:nil];
    [person addObserver:self
             forKeyPath:@"backwards"
                options:0
                context:nil];
}

- (void)observeGroup:(Group*)group;
{
    [_observing addObject:group];
    [group addObserver:self
            forKeyPath:@"members"
               options:NSKeyValueObservingOptionNew
               context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context;
{
    const char* kinds[] = {
        "(missing)",
        "NSKeyValueChangeSetting",
        "NSKeyValueChangeInsertion",
        "NSKeyValueChangeRemoval",
        "NSKeyValueChangeReplacement"
    };
    int kind = [change[NSKeyValueChangeKindKey] integerValue];
    NSLog(@"Observer saw change %s in %@ field '%@', new value = '%@', changes = %@",
          kinds[kind],
          [object description], keyPath, [object valueForKeyPath:keyPath], change);
}

@end
