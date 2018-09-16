//
//  Push1ViewController.m
//  Baimao
//
//  Created by GOKIT on 2017/11/7.
//  Copyright © 2017年 GOKIT. All rights reserved.
//

#import "Push1ViewController.h"
#import "Push2ViewController.h"

@interface Push1ViewController ()

@end

@implementation Push1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"navigationcontroller1"];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"取消", nil)
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self action:@selector(goToBack:)];
    leftButton.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = leftButton;

    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 60, 44)];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];

    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = @"返回";
    self.navigationItem.backBarButtonItem = backItem;

    [self.view addSubview:button];
}

- (void)clickAction:(UIButton *)button {
    Push2ViewController *push2VC = [[Push2ViewController alloc]init];
    [self.navigationController pushViewController:push2VC animated:YES];
    
}

- (void)goToBack:(UIBarButtonItem *)barButtonItem{
    [self dismissViewControllerAnimated:YES completion:nil];
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
