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

#pragma mark - // DEFINITIONS (Private) //

@interface AlertTableViewController ()
@property (nonatomic, strong) UIViewController *tableViewController;
- (void)setup;
- (void)teardown;
@end

@implementation AlertTableViewController

#pragma mark - // SETTERS AND GETTERS //

@synthesize tableView = _tableView;
@synthesize tableViewController = _tableViewController;

- (UITableView *)tableView
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategories:@[AKD_UI] message:nil];
    
    if (!_tableView)
    {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        [_tableView setUserInteractionEnabled:YES];
        [_tableView setAllowsSelection:YES];
        [self.tableViewController.view addSubview:_tableView];
        [self.tableViewController.view bringSubviewToFront:_tableView];
    }
    return _tableView;
}

- (UIViewController *)tableViewController
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeGetter customCategories:@[AKD_UI] message:nil];
    
    if (!_tableViewController)
    {
        _tableViewController = [[UIViewController alloc] init];
        [_tableViewController.view setBackgroundColor:[UIColor clearColor]];
        [_tableViewController.view setUserInteractionEnabled:YES];
    }
    return _tableViewController;
}

#pragma mark - // INITS AND LOADS //

- (void)viewDidLoad
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewDidLoad];
    [self setup];
}

- (void)viewWillAppear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewWillAppear:animated];
    UIViewController *contentViewController = [self valueForKey:@"contentViewController"];
    [self.tableView setFrame:CGRectMake(0.0, 0.0, contentViewController.view.frame.size.width, contentViewController.view.frame.size.height)];
}

- (void)viewDidAppear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewDidAppear:animated];
    UIViewController *contentViewController = [self valueForKey:@"contentViewController"];
    [self.tableView setFrame:CGRectMake(contentViewController.view.frame.origin.x, contentViewController.view.frame.origin.y, contentViewController.view.frame.size.width, contentViewController.view.frame.size.height)];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    CGRect rect = CGRectMake(self.tableView.contentInset.left, self.tableView.contentInset.top, self.tableView.frame.size.width, 1.0);
    [self.tableView scrollRectToVisible:rect animated:NO];
    [super viewDidDisappear:animated];
}

- (void)dealloc
{
    [AKDebugger logMethod:METHOD_NAME logType:AKLogTypeMethodName methodType:AKMethodTypeSetup customCategories:@[AKD_UI] message:nil];
    
    [self teardown];
}

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