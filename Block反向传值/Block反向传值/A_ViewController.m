//
//  A_ViewController.m
//  Block反向传值
//
//  Created by chairman on 15/11/25.
//  Copyright © 2015年 LaiYong. All rights reserved.
//

#import "A_ViewController.h"

@interface A_ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *Label;

@end

@implementation A_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

//接收B控制器回传过来的值
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"A2B"]) {
        [segue.destinationViewController setValue:^(NSString *string){
            self.Label.text = string;//在block里面把回传过来的值显示在label上
        } forKey:@"reverseBlock"];
    }
}


@end
