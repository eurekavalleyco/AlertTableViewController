//
//  AlertTableViewController.m
//  AlertTableViewController
//
//  Created by Ken M. Haggerty on 5/11/15.
//  Copyright (c) 2015 Eureka Valley Co. All rights reserved.
//

#pragma mark - // NOTES (Private) //

#pragma mark - // IMPORTS (Private) //

#import "AlertTableViewController.h"
#import "AKDebugger.h"
#import "ListInstancesTableViewController.h"

#pragma mark - // DEFINITIONS (Private) //

@interface AlertTableViewController ()
@property (nonatomic, strong) UITableViewController *tableViewController;
- (void)setup;
- (void)teardown;
@end

@implementation AlertTableViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize dataSource = _dataSource;
@synthesize delegate = _delegate;
@synthesize tableViewController = _tableViewController;

- (void)setDataSource:(id <UITableViewDataSource>)dataSource
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter customCategories:nil message:nil];
    
    _dataSource = dataSource;
    [self.tableView setDataSource:dataSource];
}

- (void)setDelegate:(id <UITableViewDelegate>)delegate
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetter customCategories:nil message:nil];
    
    _delegate = delegate;
    [self.tableView setDelegate:delegate];
}

- (UITableViewController *)tableViewController
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategories:nil message:nil];
    
    if (!_tableViewController)
    {
        _tableViewController = [[UITableViewController alloc] init];
    }
    return _tableViewController;
}

#pragma mark - // INITS AND LOADS //

#pragma mark - // PUBLIC METHODS //

#pragma mark - // DELEGATED METHODS //

#pragma mark - // OVERWRITTEN METHODS //

#pragma mark - // PRIVATE METHODS //

- (void)setup
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:nil message:nil];
    
    [self setValue:self.tableViewController forKey:@"contentViewController"];
}

- (void)teardown
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:nil message:nil];
}

@end