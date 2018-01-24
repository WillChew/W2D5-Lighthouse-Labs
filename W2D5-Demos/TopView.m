//
//  TopView.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-19.
//  Copyright © 2017 steve. All rights reserved.
//

#import "TopView.h"

/*
 CoreGraphics
 */

@implementation TopView


- (void)drawRect:(CGRect)rect {
  // get context first
  CGContextRef context = UIGraphicsGetCurrentContext();
  
//  CGContextMoveToPoint(context, 20, 30);
//  CGContextAddLineToPoint(context, 200, 30);
//  CGContextStrokePath(context);
  CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
  CGContextFillRect(context, CGRectMake(100, 100, 100, 50));
  CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
  CGContextFillEllipseInRect(context, CGRectMake(200, 200, 100, 50));

  CGContextSetLineWidth(context, 5.0);
  CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
  CGPoint points[] = {
    CGPointMake(10, 100),
    CGPointMake(10, 200),
  };

  CGContextAddLines(context, points, 2);
  CGContextStrokeLineSegments(context, points, 2);
}


@end
