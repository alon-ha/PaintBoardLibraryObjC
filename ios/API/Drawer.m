//
//  Drawer.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "Drawer.h"

@interface Drawer()

@property(assign, nonatomic) PaintBoard *paintBoard;
@property(strong, nonatomic) DrawerConfiguration *configuration;

@end

@implementation Drawer

- (instancetype)initWithConfiguration:(DrawerConfiguration *)configuration
{
    self = [super init];
    if (self) {
        _configuration = configuration;
    }
    return self;
}


-(void)drawLine:(Line *)line {
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint:line.start];
    [path addLineToPoint:line.end];
    CAShapeLayer *layer = [[CAShapeLayer alloc] init];
    layer.path = path.CGPath;
    layer.strokeColor = _configuration.color.CGColor;
    layer.lineWidth = _configuration.thickness;
    
    if (_paintBoard != nil) {
        [_paintBoard.layer addSublayer:layer];
    }
}

-(void)drawLines:(NSArray <Line *> *)lines {
    for (Line *line in lines) {
        [self drawLine:line];
    }
}

-(void)clear {
    _paintBoard.layer.sublayers = nil;
}

-(void)setBoard:(PaintBoard *)paintBoard {
    _paintBoard = paintBoard;
}

@end
