//
//  SubtasksListViewController.h
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QCAddTaskViewController.h"
#import "QCCustomCell.h"
#import "Tasks.h"


@interface SubtasksListViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *taskTableView;
@property (strong, nonatomic) NSMutableArray * tasksArray;


@end
