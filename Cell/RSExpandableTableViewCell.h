//
//  RSExpandableTableViewCell.h
//  RSExpandableTableViewCell
//
//  Created by R0CKSTAR on 12/5/13.
//  Copyright (c) 2013 P.D.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSExpandableTableViewCell : UITableViewCell

/**
 *  Transform's m34 for content view.
 */
@property (nonatomic, assign) CGFloat contentViewTransform_m34; // 0 by default.

/**
 *  Rotation angle on y axis for content view.
 */
@property (nonatomic, assign) CGFloat contentViewRotationAngle_yAxis; // 0 by default.

/**
 *  EdgeInsets for content view.
 */
@property (nonatomic, assign) UIEdgeInsets contentViewEdgeInsets; // UIEdgeInsetsZero by default.

@end
