//
//  UIViewController+BarItemHandler.h
//  Device_Orientation
//
//  Created by CCKV on 2018/5/28.
//  Copyright © 2019年 CCKV. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BarItemHandlerProtocol <NSObject>
@optional
-(BOOL)navigationClickItemShouldPop;

@end

@interface UIViewController (BarItemHandler)<BarItemHandlerProtocol>

@end

NS_ASSUME_NONNULL_END
