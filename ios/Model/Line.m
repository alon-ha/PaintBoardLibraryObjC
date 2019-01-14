//
//  Line.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)initStartPoint:(CGPoint)start endPoint:(CGPoint)end {
    self = [super init];
    if (self) {
        _start = start;
        _end = end;
    }
    return self;
}

@end
