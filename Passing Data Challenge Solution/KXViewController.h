//
//  KXViewController.h
//  Passing Data Challenge Solution
//
//  Created by Kenneth Wilcox on 4/19/14.
//  Copyright (c) 2014 Kenneth Wilcox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KXDetailViewController.h"

@interface KXViewController : UIViewController <KXDetailViewControllerDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
