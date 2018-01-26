//
//  BottomView.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-20.
//  Copyright © 2017 steve. All rights reserved.
//

#import "BottomView.h"
#import "LineSegment.h"

@interface BottomView()
@property (nonatomic) NSMutableArray <LineSegment *>* line;
@end

@implementation BottomView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    _line = [NSMutableArray new];
  }
  return self;
}

#pragma mark - Touch Handling

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  UITouch *touch = touches.anyObject;
  CGPoint first = [touch previousLocationInView:self];
  LineSegment *segment = [[LineSegment alloc] initWithFirstPoint:first secondPoint:first];
  [self.line addObject:segment];
  [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  UITouch *touch = touches.anyObject;
  CGPoint second = [touch locationInView:self];
  CGPoint first = [touch previousLocationInView:self];
  NSLog(@"%d: %@, %@", __LINE__, NSStringFromCGPoint(first), NSStringFromCGPoint(second));
  LineSegment *segment = [[LineSegment alloc] initWithFirstPoint:first secondPoint:second];
  [self.line addObject:segment];
  [self setNeedsDisplay];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  
}

#pragma mark - Drawing

- (void)drawRect:(CGRect)rect {
  UIBezierPath *path = [UIBezierPath bezierPath];
  path.lineWidth = 5.0;
  path.lineCapStyle = kCGLineCapRound;
  UIColor *gray = [UIColor grayColor];
  [gray setStroke];
  for (LineSegment *segment in self.line) {
    if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint)) {
      [path moveToPoint:segment.firstPoint];
      continue;
    }
    [path addLineToPoint:segment.firstPoint];
    [path addLineToPoint:segment.secondPoint];
  }
  [path stroke];
}

- (void)clear {
  [self.line removeAllObjects];
  [self setNeedsDisplay];
}


@end
