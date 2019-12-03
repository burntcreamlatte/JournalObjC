//
//  EntryController.h
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AAREntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryController : NSObject

+(EntryController *) shared;

@property (nonatomic, strong) NSMutableArray *entries;

- (void)addEntry:(AAREntry *)entry;
- (void)removeEntry:(AAREntry *)entry;
- (void)updateEntry:(AAREntry *)entry withTitle:(NSString *)title
           withBody:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
