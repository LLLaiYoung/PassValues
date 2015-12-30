//
//  BViewController.m
//  passValues
//
//  Created by chairman on 15/12/30.
//  Copyright © 2015年 LaiYong. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (nonatomic, strong) NSString *acceptValue;
@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = self.acceptValue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
