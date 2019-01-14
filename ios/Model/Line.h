//
//  Line.h
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Line : NSObject

@property(assign, nonatomic) CGPoint start;
@property(assign, nonatomic) CGPoint end;
- (instancetype)initStartPoint:(CGPoint)start endPoint:(CGPoint)end;

@end

NS_ASSUME_NONNULL_END
