//
//  ViewController.m
//  CYAlertView
//
//  Created by jeader on 16/5/18.
//  Copyright © 2016年 jeader. All rights reserved.
//

#import "ViewController.h"

#import "CYDefaultAlertView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *nameArr;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    self.nameArr = @[@"first",@"second"];
    
}

#pragma mark - tableView delegate & datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.nameArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        
        
    }
    NSLog(@"%@",self.nameArr);
    cell.textLabel.text = [NSString stringWithFormat:@"%@",self.nameArr[indexPath.row]];
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%ld",indexPath.row);
    switch (indexPath.row) {
        case 0:
        {
            CYDefaultAlertView *alertView = [CYDefaultAlertView alertView];
            
            alertView.backgroundColor = [UIColor redColor];
            
            [alertView show];
            
            
        }
            break;
        case 1:
        {
            
        }
            break;
            
        default:
            break;
    }
}


@end
