//
//  AppDelegate.h
//  Device_Orientation
//
//  Created by CCKV on 2018/5/28.
//  Copyright © 2019年 CCKV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 * 是否允许转向
 */
@property(nonatomic,assign)BOOL allowToRotation;

/**
 * 是否允许转向
 * 以及方向
 */
- (void)allowRotation:(BOOL)allow withInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation;


@end

