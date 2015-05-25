//
//  AlertTableViewController.h
//  AlertTableViewController
//
//  Created by Ken M. Haggerty on 5/11/15.
//  Copyright (c) 2015 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Public) //

#warning TO DO – Add support for setting NSArray of items, make generic

#pragma mark - // IMPORTS (Public) //

#import <UIKit/UIKit.h>

#pragma mark - // PROTOCOLS //

#pragma mark - // DEFINITIONS (Public) //

@interface AlertTableViewController : UIAlertController
@property (nonatomic, strong) id <UITableViewDataSource> dataSource;
@property (nonatomic, strong) id <UITableViewDelegate> delegate;
@end