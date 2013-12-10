//
//  RSTableViewController.m
//  RSExpandableTableViewCell
//
//  Created by R0CKSTAR on 12/5/13.
//  Copyright (c) 2013 P.D.Q. All rights reserved.
//

#import "RSTableViewController.h"

#import "RSExpandableTableView.h"

#import "RSExpandableTableViewCell.h"

@interface RSTableViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) RSExpandableTableView *tableView;

@end

@implementation RSTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView = (RSExpandableTableView *)self.view;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"expandable_cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
