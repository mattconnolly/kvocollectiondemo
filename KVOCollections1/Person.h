//
//  Person.h
//  KVOCollections1
//
//  Created by Matt Connolly on 2/09/2013.
//  Copyright (c) 2013 CocoaHeads Brisbane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic,retain) NSString* name;
@property (nonatomic,readonly) NSString* backwards;

- (id)initWithName:(NSString*)name;

@end
