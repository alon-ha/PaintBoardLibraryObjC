//
//  RNTPaintBoardManager.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "PaintBoard.h"

@interface RNTPaintBoardManager: RCTViewManager
@property (nonatomic, strong) PaintBoard *paintBoard;
@end

@implementation RNTPaintBoardManager
@synthesize paintBoard;

RCT_EXPORT_MODULE()

- (UIView *)view
{
    if (!self.paintBoard) {
        self.paintBoard = [[PaintBoard alloc] init];
        return self.paintBoard;
    }
    
    return self.paintBoard;
}

+ (BOOL)requiresMainQueueSetup {
    return NO;
}

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(clear) {
    [self.paintBoard clear];
}

@end

