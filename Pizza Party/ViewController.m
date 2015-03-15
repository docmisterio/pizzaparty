//
//  ViewController.m
//  Pizza Party
//
//  Created by Zach Becker on 3/11/15.
//  Copyright (c) 2015 Zach Becker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic) UITableView *mainTable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor]; //makes view white
    self.mainTable = [[UITableView alloc] init]; //allocates and initilizes an instance of UITableView called mainTable
    self.mainTable.dataSource = self; //gives mainTable a DataSource
    self.mainTable.delegate = self; //gives mainTable a delegate
//    [self.mainTable registerClass:UITableViewCell.class forCellReuseIdentifier:@"UITableViewCell"]; //Still working on what this does...
    [self.view addSubview:self.mainTable]; // creats a subView of View called mainTable

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.mainTable.frame = self.view.bounds;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10; //Creating a UITableView called tableView with a definition of how many rows per section
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"]; //assigns re-usable cells to the variable "cell"
    cell.backgroundColor = [UIColor lightGrayColor]; //changes the cell color
    cell.textLabel.text = [NSString stringWithFormat:@"index: %d", (int)indexPath.row]; // assigns the text index "number" based on indexPath.row which by default is an NSInteger
    return cell;
}
@end
