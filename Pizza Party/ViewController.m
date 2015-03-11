//
//  ViewController.m
//  Pizza Party
//
//  Created by Zach Becker on 3/11/15.
//  Copyright (c) 2015 Zach Becker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) UITableView *mainTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.mainTable = [[UITableView alloc] init];
    [self.view addSubview:self.mainTable];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.mainTable.frame = self.view.bounds;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
