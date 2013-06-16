//
//  QCViewController.m
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "QCViewController.h"

@interface QCViewController ()

@end

@implementation QCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.taskTableView.dataSource=self;
    self.taskTableView.delegate=self;
    
    
    UIBarButtonItem *rightAddbarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTaskPressed:)];
    
    
    self.navigationItem.rightBarButtonItem = rightAddbarButtonItem;
    
    
    
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
}

-(void) addTaskPressed: (id)sender
{

    
    QCAddTaskViewController *addTaskViewController = [[QCAddTaskViewController alloc] init];
    
    [self.navigationController pushViewController: addTaskViewController animated:YES];
    
    
    
    
    
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    
    
    return [self.tasksArray count];
    
}

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
    
}






@end
