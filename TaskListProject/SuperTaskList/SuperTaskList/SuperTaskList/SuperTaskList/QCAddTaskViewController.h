//
//  QCAddTaskViewController.h
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCCustomCell.h"
#import "Tasks.h"
#import "SubtasksListViewController.h"

@interface QCAddTaskViewController : UITableViewController
<UITextFieldDelegate>



@property (strong, nonatomic) IBOutlet UITextField *taskTextField;

@property (strong, nonatomic) IBOutlet UITextField *dateDueTextField;


@end
