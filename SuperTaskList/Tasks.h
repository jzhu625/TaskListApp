//
//  Tasks.h
//  SuperTaskList
//
//  Created by Eliot Arntz on 7/10/13.
//  Copyright (c) 2013 self.edu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Tasks : NSManagedObject

@property (nonatomic) NSTimeInterval duedate;
@property (nonatomic, retain) NSString * taskdescription;

@end
