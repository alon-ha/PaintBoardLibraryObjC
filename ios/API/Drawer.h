//
//  Drawer.h
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Line.h"
#import "DrawerConfiguration.h"
#import "PaintBoard.h"

NS_ASSUME_NONNULL_BEGIN

@interface Drawer : NSObject

-(void)drawLine:(Line *)line;
-(void)drawLines:(NSArray <Line *> *)lines;
-(void)clear;
-(void)setBoard:(PaintBoard *)paintBoard;
- (instancetype)initWithConfiguration:(DrawerConfiguration *)configuration;

@end

NS_ASSUME_NONNULL_END
