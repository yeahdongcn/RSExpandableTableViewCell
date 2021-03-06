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
@property (nonatomic, assign) CGFloat contentViewTransform_m34; // -1.0 / 850.0 by default.

/**
 *  Rotation angle on y axis for content view.
 */
@property (nonatomic, assign) CGFloat contentViewRotationAngle_yAxis; // 10 degrees by default.

/**
 *  EdgeInsets for content view.
 */
@property (nonatomic, assign) UIEdgeInsets contentViewEdgeInsets; // UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f) by default.

/**
 *  Extended height for expandable part.
 */
@property (nonatomic, assign) CGFloat extendedHeight; // 40.0f by default.

/**
 *  Covered height for itself.
 */
@property (nonatomic, assign) CGFloat coveredHeight; // 40.0f by default.

@end
