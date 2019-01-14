//
//  DrawerConfiguration.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "DrawerConfiguration.h"

@implementation DrawerConfiguration

- (instancetype)initWithColor:(UIColor *)color thickness:(CGFloat)thickness
{
    self = [super init];
    if (self) {
        _color = color;
        _thickness = thickness;
    }
    return self;
}

@end
