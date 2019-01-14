//
//  ColorPalette.h
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorPalette : NSObject

typedef NS_ENUM(NSInteger, ColorType) {
    BlueColor
};

+(UIColor *)colorFor:(ColorType)colorType;

@end

NS_ASSUME_NONNULL_END
