//
//  KXDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Kenneth Wilcox on 4/19/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

#import "KXDetailViewController.h"

@interface KXDetailViewController ()

@end

@implementation KXDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  // Do any additional setup after loading the view.
  self.textLabel.text = self.sentText;
  self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

// Hide the Keyboard if the user touches outside of it
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  for (UIView *view in self.view.subviews)
    [view resignFirstResponder];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)updateButtonPressed:(UIButton *)sender
{
  self.textLabel.text = self.textField.text;
  [self.delegate didUpdateText:self.textField.text];
}

#pragma mark - UITextFieldDelegate
// Hide the Keyboard if the user presses the return key
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
  [self.textField resignFirstResponder];
  return YES;
}

@end
