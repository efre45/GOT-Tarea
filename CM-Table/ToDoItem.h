//
//  ToDoItem.h
//  CM-Table
//
//  Created by Roberto Lucca on 6/17/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;


@end
