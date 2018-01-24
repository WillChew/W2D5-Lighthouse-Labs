//
//  CustomView.m
//  W2D5-Demos
//
//  Created by steve on 2017-03-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  NSLog(@"something");
  UITouch *touch = touches.anyObject;
  CGPoint locationInView = [touch locationInView:self];
  CGPoint previousLocationInView = [touch previousLocationInView:self];
  NSLog(@"location in view: %@", NSStringFromCGPoint(locationInView) );
  NSLog(@"previous location in view: %@", NSStringFromCGPoint(previousLocationInView));
  
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//  
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//  
//}
//
//- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//  
//}
@end
