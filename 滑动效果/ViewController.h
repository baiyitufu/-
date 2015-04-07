//
//  ViewController.h
//  滑动效果
//
//  Created by Add on 15-3-30.
//  Copyright (c) 2015年 shinyv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLCustomSlideView.h"
@interface ViewController : UIViewController<DLCustomSlideViewDelegate>
{
    DLCustomSlideView *slideView;
    NSMutableArray *itemArray;
}

@end

