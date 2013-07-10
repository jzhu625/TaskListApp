//
//  QCToDoListViewController.h
//  SuperTaskList
//
//  Created by QL Mac Lab on 6/29/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QCToDoListViewController : UIViewController <UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIButton *addListButton;
@property (strong, nonatomic) IBOutlet UITextField *toDueList;
@property (strong, nonatomic) IBOutlet UITableView *listsTableView;

@end
