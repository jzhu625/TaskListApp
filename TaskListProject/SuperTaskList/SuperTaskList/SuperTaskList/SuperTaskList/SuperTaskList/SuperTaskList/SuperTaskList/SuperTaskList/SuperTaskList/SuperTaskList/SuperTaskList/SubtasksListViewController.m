//
//  SubtasksListViewController.m
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import "SubtasksListViewController.h"

@interface SubtasksListViewController ()

@end

@implementation SubtasksListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.taskTableView.dataSource=self;
    self.taskTableView.delegate=self;
    
    self.tasksArray  = [[NSMutableArray alloc] init];
    
    
    UIBarButtonItem *rightAddbarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addTaskPressed:)];
    
    
    self.navigationItem.rightBarButtonItem = rightAddbarButtonItem;
    
    
    
    
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    
      //checked=NO;
}

- (void) viewDidAppear:(BOOL) animated
{
    [super viewDidAppear:animated];
    
    self.tasksArray = [[NSMutableArray alloc] initWithArray:[Tasks findAllSortedBy:@"duedate" ascending:YES]];
    
    //After we setup our "Data source" we call the method reload on our tableView object so that the tableview will properly display the appropraite information.
    [self.taskTableView reloadData];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasksArray count];
    
   }

- (UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
       
    static NSString *cellId = @"enteredTaskCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
//        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"QCCustomCell" owner:self options:nil];
//        cell = [nib objectAtIndex:0];
    }
    
   

//    cell.taskNameLabel.text = [self.tasksArray objectAtIndex:indexPath.row];
//    Tasks *task = [Tasks createEntity];
//    task.taskdescription = self.title;
//    task.duedate = 22;
    
    

    
   
    return cell;
   
     
   
}




@end
