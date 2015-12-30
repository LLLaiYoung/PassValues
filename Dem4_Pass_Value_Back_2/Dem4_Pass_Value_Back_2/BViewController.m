//
//  BViewController.m
//  Dem4_Pass_Value_Back_2
//
//  Created by chairman on 15/7/18.
//  Copyright (c) 2015年 chairman. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)ReturnValue:(id)sender {
    //3.在B消失之前,给代理方发送消息
    if ([self.delegate respondsToSelector:@selector(BViewController:didInputReturnMessage:)]) {
        
        [self.delegate BViewController:self didInputReturnMessage:self.textField.text];
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
