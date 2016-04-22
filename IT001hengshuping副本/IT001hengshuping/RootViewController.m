//
//  RootViewController.m
//  IT001hengshuping
//
//  Created by Box on 15/10/21.
//  Copyright © 2015年 Box. All rights reserved.
//

#import "RootViewController.h"
#import "InfoViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.bounds = CGRectMake(0, 0, 80, 100);
    button.backgroundColor = [UIColor blueColor];
    button.center = self.view.center;
    [button setTitle:@"1" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)push:(id)sender {
    InfoViewController *info = [InfoViewController new];
    [self.navigationController pushViewController:info animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)shouldAutorotate {
//    NSLog(@"%s",__FUNCTION__);
    return NO;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//    return UIInterfaceOrientationPortrait;
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
