//
//  Person.m
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString*)name;
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"<Person name='%@'>", self.name];
}

//- (void)setName:(NSString *)name
//{
//    if (_name != name)
//    {
//        [self willChangeValueForKey:@"backwards"];
//        _name = name;
//        [self didChangeValueForKey:@"backwards"];
//    }
//}

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key;
{
    NSSet* keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
    if ([key isEqualToString:@"backwards"])
    {
        keyPaths = [keyPaths setByAddingObject:@"name"];
    }
    return keyPaths;
}

- (NSString*)backwards;
{
    NSInteger length = self.name.length;
    NSMutableString *reversedString = [NSMutableString stringWithCapacity:length];
    
    [self.name enumerateSubstringsInRange:NSMakeRange(0, length)
                                  options:(NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                               usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                   [reversedString appendString:substring];
                               }];
    return [reversedString copy];
}

@end
