//
//  TextViewViewController.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-19.
//  Copyright © 2017 steve. All rights reserved.
//

#import "TextViewViewController.h"

@interface TextViewViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation TextViewViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupTextView];
  [self setupStyle];
}

#pragma mark - Setup

- (void)setupTextView {
  self.textView.text = @"";
  self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)setupStyle {
  self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
  self.navigationController.navigationBar.translucent = YES;
}

#pragma mark - Save

- (IBAction)save:(UIBarButtonItem *)sender {
  NSLog(@"%d: %s", __LINE__, __PRETTY_FUNCTION__);
  NSLog(@"%d: %@", __LINE__, self.textView.text);
  [self.textView resignFirstResponder];
}

#pragma mark - Delegate Methods

- (void)textViewDidBeginEditing:(UITextView *)textView {
  // clears the text
  NSLog(@"%s", __PRETTY_FUNCTION__);
  self.textView.text = @"";
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  NSLog(@"%d: %s", __LINE__, __PRETTY_FUNCTION__);
  NSLog(@"%d: %@", __LINE__, text);
  // validation prevents inserting ! in the input field
  return ![text isEqualToString:@"!"];
}

- (void)textViewDidChange:(UITextView *)textView {
  NSLog(@"%d: %s", __LINE__, __PRETTY_FUNCTION__);
  NSLog(@"%d: %@", __LINE__, textView.text);
}

@end
