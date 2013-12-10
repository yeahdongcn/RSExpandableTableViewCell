//
//  RSExpandableTableView.m
//  RSExpandableTableViewCell
//
//  Created by R0CKSTAR on 12/10/13.
//  Copyright (c) 2013 P.D.Q. All rights reserved.
//

#import "RSExpandableTableView.h"

#import "RSExpandableTableViewCell.h"

@implementation RSExpandableTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [super rectForRowAtIndexPath:indexPath];
}

- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [super cellForRowAtIndexPath:indexPath];
}

- (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point
{
    NSIndexPath *indexPath = [super indexPathForRowAtPoint:point];
    RSExpandableTableViewCell *cell = [self cellForRowAtIndexPath:indexPath];
    return indexPath;
}

@end
