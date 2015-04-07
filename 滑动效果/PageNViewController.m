//
//  PageNViewController.m
//  滑动效果
//
//  Created by Add on 15-3-30.
//  Copyright (c) 2015年 shinyv. All rights reserved.
//

#import "PageNViewController.h"

@interface PageNViewController ()

@end

@implementation PageNViewController

-(void)viewWillAppear:(BOOL)animated
{
    NSLog(@"page%@ viewWillAppear", self.pageLabel.text);
}

-(void)viewDidAppear:(BOOL)animated
{
    NSLog(@"page%@ viewDidAppear", self.pageLabel.text);
}

-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"page%@ viewWillDisappear", self.pageLabel.text);
}

-(void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"page%@ viewDidDisappear", self.pageLabel.text);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    lab.backgroundColor = [UIColor clearColor];
    lab.textAlignment = NSTextAlignmentLeft;
    lab.text = @"页面：";
    
    
    self.pageLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 150, 100, 80)];
    self.pageLabel.textAlignment = NSTextAlignmentCenter;
    self.pageLabel.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:lab];
    [self.view addSubview:self.pageLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
