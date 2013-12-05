//
//  RSExpandableTableViewCell.m
//  RSExpandableTableViewCell
//
//  Created by R0CKSTAR on 12/5/13.
//  Copyright (c) 2013 P.D.Q. All rights reserved.
//

#import "RSExpandableTableViewCell.h"

@implementation RSExpandableTableViewCell

- (void)__init
{
    [self addObserver:self forKeyPath:@"contentView" options:NSKeyValueObservingOptionInitial context:NULL];
    
    UIView *selectedBackgroundView = [[UIView alloc] init];
    selectedBackgroundView.backgroundColor = [UIColor clearColor];
    selectedBackgroundView.layer.masksToBounds = YES;
    self.selectedBackgroundView = selectedBackgroundView;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"contentView"]) {
        self.contentView.layer.borderWidth = 1.0f;
    }
}

#pragma mark - Allocation/Deallocation

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self __init];
    }
    return self;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        [self __init];
    }
    return self;
}

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"contentView"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setFrame:(CGRect)frame
{
    CGRect rect = frame;
    rect.origin.x += 5;
    rect.origin.y += 5;
    rect.size.height += 40;
    rect.size.width -= 10;
    [super setFrame:rect];
}

@end
