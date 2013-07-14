//
//  QCCustomCell.h
//  SuperTaskList
//
//  Created by QL Mac Lab on 6/18/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditTaskViewController.h"
#import "TasksViewController.h"

@interface QCCustomCell : UITableViewCell{
    BOOL checked;
}
@property (strong, nonatomic) IBOutlet UIButton *checkBoxButton;

- (IBAction)checkBoxButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *taskTextLabel;
    
    
    
@end
