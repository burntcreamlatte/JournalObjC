//
//  EntryDetailViewController.m
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import "EntryDetailViewController.h"
#import "EntryController.h"

@interface EntryDetailViewController ()

@end

@implementation EntryDetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (self.isFirstResponder) {
        [self resignFirstResponder];
        return YES;
    } else {
        return NO;
    }
}



- (IBAction)saveEntryButtonTapped:(id)sender {
    
    NSString *title = self.titleTextField.text;
    NSString *bodyText = self.bodyTextView.text;
    NSDate *timestamp = [NSDate new];
    
    if (self.entry != nil) {
        [EntryController.shared updateEntry:self.entry withTitle:title withBody:bodyText];
    } else {
        AAREntry *newEntry = [[AAREntry alloc] initWithName:title bodyText:bodyText timestamp:timestamp];
        [EntryController.shared addEntry:newEntry];
        
    }
    

}
- (IBAction)clearTextButtonTapped:(id)sender {
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
    
}



@end
