//
//  QCAddTaskViewController.h
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCCustomCell.h"

@interface QCAddTaskViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *addTaskButton;
- (IBAction)addTaskButtonPressed:(UIButton *)sender;

@end
