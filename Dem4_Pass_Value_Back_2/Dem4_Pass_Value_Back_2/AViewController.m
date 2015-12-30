//
//  AViewController.m
//  Dem4_Pass_Value_Back_2
//
//  Created by chairman on 15/7/18.
//  Copyright (c) 2015年 chairman. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

/*
 AViewController成为B的代理,负责显示回传的数据时
 需要完成三件事:
 1.遵守协议
 2.实现方法
 3.设置自己成为B的代理
*/
//1.遵守协议
@interface AViewController ()<BViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *Label;

@end

@implementation AViewController
// 2.实现方法
- (void)BViewController:(BViewController *)bvc didInputReturnMessage:(NSString *)msg {
    self.Label.text = msg;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Label.text = @"";

}
- (IBAction)GotoBVC:(id)sender {
    BViewController *bvc = [[BViewController alloc]initWithNibName:@"BViewController" bundle:nil];
    //3.将自己设置为委托方bvc的代理
    bvc.delegate = self;
    [self presentViewController:bvc animated:YES completion:nil];
}

@end

























