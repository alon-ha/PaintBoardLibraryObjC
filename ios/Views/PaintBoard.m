//
//  PaintBoard.m
//  RNPaintBoardLibraryObjC
//
//  Created by Alon Haiut on 14/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "PaintBoard.h"
#import "Drawer.h"
#import "DrawerConfiguration.h"
#import "Line.h"
#import "ColorPalette.h"

@interface PaintBoard()

@property(strong, nonatomic) Drawer *drawer;
@property(strong, nonatomic) NSMutableArray<Line *> *lines;
@property(assign, nonatomic) CGPoint lastPoint;

@end

@implementation PaintBoard

- (instancetype)init
{
    self = [super init];
    if (self) {
        DrawerConfiguration *config = [[DrawerConfiguration alloc] initWithColor:[ColorPalette colorFor:BlueColor] thickness:5.0];
        _drawer = [[Drawer alloc] initWithConfiguration:config];
        [_drawer setBoard:self];
        _lines = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [[touches allObjects] firstObject];
    if (touch != nil) {
        _lastPoint = [touch locationInView:self];
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
    UITouch *touch = [[touches allObjects] firstObject];
    if (touch == nil) {
        return;
    }
    
    CGPoint point = [touch locationInView:self];
    // continue only if the point inside the paint board
    if (![self pointInside:_lastPoint withEvent:event]) {
        return;
    }
    
    Line *line = [[Line alloc] initStartPoint:_lastPoint endPoint:point];
    [_lines addObject:line];
    _lastPoint = point;
    [_drawer drawLine:line];
}

-(void)clear {
    [_drawer clear];
    _lines = [[NSMutableArray alloc] init];
}

@end
