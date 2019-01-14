//
//  DrawerConfiguration.h
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DrawerConfiguration : NSObject

@property(strong, nonatomic) UIColor *color;
@property(assign, nonatomic) CGFloat thickness;
- (instancetype)initWithColor:(UIColor *)color thickness:(CGFloat)thickness;

@end

NS_ASSUME_NONNULL_END
