//
//  ColorPalette.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "ColorPalette.h"

@implementation ColorPalette

+(UIColor *)colorFor:(ColorType)colorType {
    CGFloat red;
    CGFloat green;
    CGFloat blue;
    
    switch (colorType) {
        case BlueColor:
            red = 0;
            green = 161;
            blue = 229;
            break;
    }
    
    return [self colorWithRed:red withGreen:green withBlue:blue];
}

+(UIColor *)colorWithRed:(CGFloat)red withGreen:(CGFloat)green withBlue:(CGFloat)blue {
    return [[UIColor alloc] initWithRed:red/255 green:green/255 blue:blue/255 alpha:1];
}

@end
