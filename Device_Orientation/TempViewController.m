//
//  TempViewController.m
//  Device_Orientation
//
//  Created by CCKV on 2018/5/28.
//  Copyright © 2019年 CCKV. All rights reserved.
//

#import "TempViewController.h"
#import "AppDelegate.h"

@interface TempViewController ()

@property (nonatomic,assign)BOOL backPortrait;//判断当前屏幕是否横屏

@end

@implementation TempViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    static int i = 0;
    
    if (i%2==0) {
        self.backPortrait = YES;
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        [delegate allowRotation:YES withInterfaceOrientation:UIInterfaceOrientationLandscapeLeft];
    }else{
        self.backPortrait = NO;
        AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
        [delegate allowRotation:NO withInterfaceOrientation:0];
    }
    
    i++;
}

#pragma mark - 拦截navigationItem的点击事件
-(BOOL)navigationClickItemShouldPop {
    if(self.backPortrait) {
        //返回到竖屏的弹窗
        [self LandscapeToPortrait];
        return NO;
    }
    return YES;
}

- (void)LandscapeToPortrait
{
    self.backPortrait = NO;
    AppDelegate *delegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    [delegate allowRotation:NO withInterfaceOrientation:0];
    
}

#pragma mark - cycle
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:((arc4random()%255)/255.0) green:((arc4random()%255)/255.0) blue:((arc4random()%255)/255.0) alpha:1];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //禁用侧滑手势方法
    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //开启侧滑手势方法
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
}

@end
