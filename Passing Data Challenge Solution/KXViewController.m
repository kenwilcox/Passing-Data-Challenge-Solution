//
//  KXViewController.m
//  Passing Data Challenge Solution
//
//  Created by Kenneth Wilcox on 4/19/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

#import "KXViewController.h"
#import "KXDetailViewController.h"

@interface KXViewController ()

@end

@implementation KXViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  //  NSLog(@"segue: %@ - sender: %@", segue, sender);
  if ([sender isKindOfClass:[UIButton class]])
  {
    if ([segue.destinationViewController isKindOfClass:[KXDetailViewController class]])
    {
      KXDetailViewController *nextViewController = segue.destinationViewController;
      nextViewController.sentText = self.textField.text;
      nextViewController.delegate = self;
    }
  }
}

// Hide the Keyboard if the user touches outside of it
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  for (UIView *view in self.view.subviews)
    [view resignFirstResponder];
}

#pragma mark - KXDetailViewControllerDelegate
-(void)didUpdateText:(NSString *)text
{
  self.textField.text = text;
}


#pragma mark - UITextFieldDelegate
// Hide the Keyboard if the user presses the return key
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
  [self.textField resignFirstResponder];
  return YES;
}

@end
