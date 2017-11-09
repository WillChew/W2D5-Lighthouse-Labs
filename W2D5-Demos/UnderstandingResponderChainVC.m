//
//  UnderstandingResponderChainVCViewController.m
//  W2D5-Demos
//
//  Created by steve on 2017-03-16.
//  Copyright © 2017 steve. All rights reserved.
//

#import "UnderstandingResponderChainVC.h"

@interface UnderstandingResponderChainVC ()

@end

@implementation UnderstandingResponderChainVC

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
