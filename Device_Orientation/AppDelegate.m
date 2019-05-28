//
//  AppDelegate.m
//  Device_Orientation
//
//  Created by CCKV on 2018/5/28.
//  Copyright © 2019年 CCKV. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/**
 * 是否允许转向
 * 以及方向
 */
- (void)allowRotation:(BOOL)allow withInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    self.allowToRotation = allow;
    
    if (allow && interfaceOrientation>0) {
        
        NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
        
        [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
        
        NSNumber *orientationTarget = [NSNumber numberWithInt:interfaceOrientation];// 设置成想要的方向
        
        [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
        
    }else{// 恢复原来的屏幕状态
        
        NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
        
        [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
        
        NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];// 还原
        
        [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
    }
    
    // 第二种显示方式
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        SEL selector  = NSSelectorFromString(@"setOrientation:");
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//        [invocation setSelector:selector];
//        [invocation setTarget:[UIDevice currentDevice]];
//        int val = interfaceOrientation;
//        // 从2开始是因为0 1 两个参数已经被selector和target占用
//        [invocation setArgument:&val atIndex:2];
//        [invocation invoke];
//    }
    
}


- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window
{
    //    return UIInterfaceOrientationMaskAll;
    
    if (self.allowToRotation == YES) {
        //横屏
        return UIInterfaceOrientationMaskLandscape;
    }else{
        //竖屏
        return UIInterfaceOrientationMaskPortrait;
    }
}

@end
