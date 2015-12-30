//
//  BViewController.h
//  Dem4_Pass_Value_Back_2
//
//  Created by chairman on 15/7/18.
//  Copyright (c) 2015年 chairman. All rights reserved.
//

#import <UIKit/UIKit.h>
/*1.定义一个协议
    a.定义协议时,要写在委托方类的.h文件中
    b.协议名遵守的原则:委托方类名+Delegate
    c.方法名 尽量体现发消息的时机
    d.方法 的第一个参数 一定是委托方类型
*/
/*2.增加一个属性用于记录代理方对象的引用
    a.属性名:Delegate
    b.属性类型:id类型,并且遵守定义的协议的都可以
*/
@class BViewController;
//1.定义一个协议
@protocol BViewControllerDelegate <NSObject>

- (void)BViewController:(BViewController *)bvc didInputReturnMessage:(NSString *)msg;

@end



@interface BViewController : UIViewController
//2.增加一个属性用于记录代理方对象的引用
@property (nonatomic,weak) id<BViewControllerDelegate> delegate;

@end














