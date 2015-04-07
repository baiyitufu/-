//
//  TestOneViewController.m
//  滑动效果
//
//  Created by Add on 15-3-30.
//  Copyright (c) 2015年 shinyv. All rights reserved.
//

#import "TestOneViewController.h"
#import "ViewController.h"
#import "Demo2ViewController.h"
@interface TestOneViewController ()

@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType: UIButtonTypeCustom];
    button.showsTouchWhenHighlighted=YES;
    button.backgroundColor = [UIColor yellowColor];
    button.frame = CGRectMake(100, 100, 60, 44);
    [button setTitle:@"测试" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)buttonAction:(id)sender
{
        ViewController *viewBtn = [[ViewController alloc]init];
   // self.navigationController.navigationBarHidden=YES;
        [self.navigationController pushViewController:viewBtn animated:YES];
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
