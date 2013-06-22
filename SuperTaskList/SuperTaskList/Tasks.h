//
//  Tasks.h
//  SuperTaskList
//
//  Created by Jonathan Zhu on 6/16/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Tasks : NSManagedObject

@property (nonatomic, retain) NSString * taskdescription;
@property (nonatomic) NSTimeInterval duedate;

@end
