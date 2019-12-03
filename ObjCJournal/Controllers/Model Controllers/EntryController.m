//
//  EntryController.m
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import "EntryController.h"
#import "AAREntry.h"

@implementation EntryController


- (instancetype) init {
    self = [super init];
    
    if (self) {
        _entries = [NSMutableArray<AAREntry *> new];
        
    }
    return self;
}

+ (EntryController *) shared {
    static EntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [EntryController new];
    });
    return shared;
}



- (void)addEntry:(AAREntry *)entry;
{
    [self.entries addObject:entry];
    
}

- (void)removeEntry:(AAREntry *)entry;
{
    [self.entries removeObject:entry];
}

- (void)updateEntry:(AAREntry *)entry withTitle:(nonnull NSString *)title withBody:(nonnull NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
}
@end
