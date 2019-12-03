//
//  Entry.h
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AAREntry : NSObject


// MARK: - Properties

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *bodyText;
//TODO; alloc and init for timestamp to show
@property (nonatomic, copy, readonly) NSDate *timestamp;


// MARK: - Initializer
- (instancetype) initWithName: (NSString *)title
                     bodyText: (NSString *)bodyText
                    timestamp: (NSDate *)timestamp;

// MARK: Factory Methods

@end

NS_ASSUME_NONNULL_END
