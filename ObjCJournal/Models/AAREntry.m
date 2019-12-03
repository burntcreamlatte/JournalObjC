//
//  Entry.m
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import "AAREntry.h"

@implementation AAREntry

- (instancetype)initWithName:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    
    self = [super init];
    
    if (self) {
        _title = [title copy];
        _bodyText = [bodyText copy];
        _timestamp = [timestamp copy];
    }
    return self;
}

@end
