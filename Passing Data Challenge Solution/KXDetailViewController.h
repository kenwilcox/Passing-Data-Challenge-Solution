//
//  KXDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Kenneth Wilcox on 4/19/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KXDetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText:(NSString *)text;

@end

@interface KXDetailViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <KXDetailViewControllerDelegate> delegate;
@property (strong, nonatomic) NSString *sentText;

@property (strong, nonatomic) IBOutlet UILabel *textLabel;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)updateButtonPressed:(UIButton *)sender;

@end
