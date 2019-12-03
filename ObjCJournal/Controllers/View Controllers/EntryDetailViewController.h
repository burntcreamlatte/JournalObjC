//
//  EntryDetailViewController.h
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AAREntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface EntryDetailViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@property (strong, nonatomic) AAREntry *entry;

@end

NS_ASSUME_NONNULL_END
