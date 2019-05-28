//
//  ViewController.m
//  Device_Orientation
//
//  Created by CCKV on 2018/5/28.
//  Copyright © 2019年 CCKV. All rights reserved.
//

#import "ViewController.h"
#import "TempViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[TempViewController new] animated:YES];
}

@end
