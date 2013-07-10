//
//  Tasks.h
//  SuperTaskList
//
//  Created by QL Mac Lab on 7/9/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Tasks : NSManagedObject

@property (nonatomic) NSTimeInterval duedate;
@property (nonatomic, retain) NSString * taskdescription;

@end
