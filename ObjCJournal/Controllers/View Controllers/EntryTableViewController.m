//
//  EntryTableViewController.m
//  ObjCJournal
//
//  Created by Aaron Shackelford on 12/2/19.
//  Copyright © 2019 Aaron Shackelford. All rights reserved.
//

#import "EntryTableViewController.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"

@interface EntryTableViewController ()

@end

@implementation EntryTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return EntryController.shared.entries.count;}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    AAREntry *entryToPopulate = EntryController.shared.entries[indexPath.row];
    
    NSDateFormatter *df = [NSDateFormatter new];
    df.dateFormat = @"MM/d h:mm a";
    
    cell.textLabel.text = entryToPopulate.title;
    cell.detailTextLabel.text =[df stringFromDate:entryToPopulate.timestamp];
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        AAREntry *entryToBeDeleted = EntryController.shared.entries[indexPath.row];
        [EntryController.shared removeEntry:entryToBeDeleted];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"toEntryDetailVC"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        EntryDetailViewController *destinationVC = segue.destinationViewController;
        destinationVC.entry = [EntryController.shared.entries objectAtIndex:indexPath.row];
    }
}

@end
