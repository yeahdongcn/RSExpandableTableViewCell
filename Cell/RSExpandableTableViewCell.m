//
//  RSExpandableTableViewCell.m
//  RSExpandableTableViewCell
//
//  Created by R0CKSTAR on 12/5/13.
//  Copyright (c) 2013 P.D.Q. All rights reserved.
//

#import "RSExpandableTableViewCell.h"

@interface RSExpandableTableViewCell ()

@property (nonatomic, strong) UIView *vvvvv;

@end

@implementation RSExpandableTableViewCell

/**
 *  Degrees to Radians
 *
 *  @param degrees Input degrees
 *
 *  @return Output radians
 */
#define DegreesToRadians( degrees ) ( ( degrees ) / 180.0 * M_PI )

/**
 *  Radians to Degrees
 *
 *  @param radians Input radians
 *
 *  @return Output degrees
 */
#define RadiansToDegrees( radians ) ( ( radians ) * ( 180.0 / M_PI ) )

- (void)__init
{
    self.vvvvv = [[UIView alloc] init];
    self.vvvvv.backgroundColor = [UIColor redColor];
    [self addSubview:self.vvvvv];
    
    [self addObserver:self forKeyPath:@"textLabel" options:NSKeyValueObservingOptionInitial context:NULL];
    
    [self addObserver:self forKeyPath:@"contentView" options:NSKeyValueObservingOptionInitial context:NULL];
    
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.layer.backgroundColor = [[UIColor lightGrayColor] CGColor];
    backgroundView.layer.masksToBounds = YES;
    self.backgroundView = backgroundView;
    
    UIView *selectedBackgroundView = [[UIView alloc] init];
    selectedBackgroundView.layer.backgroundColor = [[UIColor grayColor] CGColor];
    selectedBackgroundView.layer.masksToBounds = YES;
    self.selectedBackgroundView = selectedBackgroundView;
    
    self.coveredHeight = 40.0f;
    
    self.extendedHeight = 40.0f;
    
//    self.contentViewTransform_m34 = -1.0f / 850.0f;
//    
//    self.contentViewRotationAngle_yAxis = DegreesToRadians(10);
    
    self.contentViewEdgeInsets = UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f);
}

- (void)setContentViewTransform_m34:(CGFloat)contentViewTransform_m34
{
    if (_contentViewTransform_m34 != contentViewTransform_m34) {
        CATransform3D transform = CATransform3DIdentity;
        transform.m34 = contentViewTransform_m34;
        self.layer.transform = transform;
    }
    _contentViewTransform_m34 = contentViewTransform_m34;
}

- (void)setContentViewRotationAngle_yAxis:(CGFloat)contentViewRotationAngle_yAxis
{
    if (_contentViewRotationAngle_yAxis != contentViewRotationAngle_yAxis) {
        self.layer.transform = CATransform3DRotate(self.layer.transform, contentViewRotationAngle_yAxis, 0.0f, 1.0f, 0.0f);
    }
    _contentViewRotationAngle_yAxis = contentViewRotationAngle_yAxis;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqualToString:@"textLabel"]) {
        self.textLabel.backgroundColor = [UIColor clearColor];
    } else if ([keyPath isEqualToString:@"contentView"]) {
        self.contentView.layer.borderColor = [[UIColor darkGrayColor] CGColor];
        self.contentView.layer.borderWidth = 4.0f;
        self.alpha = 0.6;
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
    [self removeObserver:self forKeyPath:@"textLabel"];
    [self removeObserver:self forKeyPath:@"contentView"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (void)setFrame:(CGRect)frame
{
    CGRect rect = frame;
    rect.origin.x += self.contentViewEdgeInsets.left;
    rect.origin.y += self.contentViewEdgeInsets.top;
    rect.size.height -= self.contentViewEdgeInsets.top + self.contentViewEdgeInsets.bottom - self.coveredHeight;
    rect.size.width -= self.contentViewEdgeInsets.left + self.contentViewEdgeInsets.right;
    
    [self.vvvvv setFrame:CGRectMake(0, 0, rect.size.width, rect.size.height - self.coveredHeight)];
    [super setFrame:rect];
}

@end
