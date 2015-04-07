//
//  ViewController.m
//  滑动效果
//
//  Created by Add on 15-3-30.
//  Copyright (c) 2015年 shinyv. All rights reserved.
//

#define IOS7 ([[[UIDevice currentDevice]systemVersion] compare:@"7.0"]!= NSOrderedAscending)

/* 判断设备是否为iphone5 */
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)


#import "ViewController.h"

#import "DLLRUCache.h"
#import "DLScrollTabbarView.h"
#import "PageNViewController.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
#ifdef IOS7_SDK_AVAILABLE
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.extendedLayoutIncludesOpaqueBars = NO;
    
    self.modalPresentationCapturesStatusBarAppearance = NO;
    
    self.navigationController.navigationBar.translucent = NO;
    self.automaticallyAdjustsScrollViewInsets = NO;
#endif
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationController.navigationBarHidden = YES;
    self.title = @"图集";
    self.view.backgroundColor = [UIColor clearColor];
    //slideView = [[DLCustomSlideView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //slideView = [[DLCustomSlideView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    //slideView = [[DLCustomSlideView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
//    if ([[[UIDevice currentDevice]systemVersion] compare:@"7.0"]!= NSOrderedAscending) {
//        slideView = [[DLCustomSlideView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    }else{
//        slideView = [[DLCustomSlideView alloc]initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    }
 
    
    self.automaticallyAdjustsScrollViewInsets = NO;

    slideView = [[DLCustomSlideView alloc]initWithFrame: CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
 
    slideView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:slideView];
    //self.navigationController.navigationBarHidden=YES;
    
    DLLRUCache *cache = [[DLLRUCache alloc]initWithCount:5];
    DLScrollTabbarView *tabitem = [[DLScrollTabbarView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 34)];
    tabitem.tabItemNormalColor = [UIColor blackColor];
    tabitem.tabItemSelectedColor = [UIColor blueColor];
    tabitem.tabItemNormalFontSize = 14.0f;
    tabitem.trackColor = [UIColor blueColor];
    itemArray = [NSMutableArray array];

    
    for ( int i=0; i<10; i++) {
        
        DLScrollTabbarItem *

        item = [DLScrollTabbarItem itemWithTitle:[NSString stringWithFormat:@"页面%d", i+1] width:80];
        [itemArray addObject:item];
    }
    //[itemArray addObjectsFromArray:[NSArray arrayWithObjects:@"精品一",@"精品二",@"精品三",@"精品四",@"精品五",@"精品六",@"精品七",@"精品八", nil]];
    
    tabitem.tabbarItems = itemArray;
    slideView.delegate=self;
    slideView.tabbar = tabitem;
    slideView.cache = cache;
    slideView.tabbarBottomSpacing = 5;
    slideView.baseViewController = self;
    
    [slideView setup];
    slideView.selectedIndex = 0;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfTabsInDLCustomSlideView:(DLCustomSlideView *)sender
{
    return itemArray.count;
}

-(UIViewController *)DLCustomSlideView:(DLCustomSlideView *)sender controllerAt:(NSInteger)index
{
    PageNViewController *pageview = [[PageNViewController alloc]init];
    int32_t rgbValue = rand();
    pageview.view.backgroundColor = [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
    pageview.pageLabel.text = [NSString stringWithFormat:@"%ld",(long)index];
    return pageview;
}

@end





























