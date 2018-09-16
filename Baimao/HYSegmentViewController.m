//
//  HYSegmentViewController.m
//  Baimao
//
//  Created by GOKIT on 2017/10/21.
//  Copyright © 2017年 GOKIT. All rights reserved.
//

#import "HYSegmentViewController.h"
#import "Push1ViewController.h"

#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height

@interface HYSegmentViewController ()

@end

@implementation HYSegmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UINavigationBar *navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, SCREEN_W, 64)];
    navBar.barTintColor = [UIColor whiteColor];
    NSDictionary *dict = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
    [navBar setTitleTextAttributes:dict];

    [self.view addSubview:navBar];

    NSArray *segmentedArray = [[NSArray alloc]initWithObjects:@"骑士",@"勇士",@"马刺",@"火箭",nil];

    //初始化UISegmentedControl
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];

    segmentedControl.frame = CGRectMake(20,27,SCREEN_W - 40,30);

    // 设置默认选择项索引

    segmentedControl.selectedSegmentIndex = 0;

    segmentedControl.tintColor = [UIColor redColor];



    // 设置在点击后是否恢复原样

//    segmentedControl.momentary = YES;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [navBar addSubview:segmentedControl];


    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 60, 44)];
    [button setTitle:@"push" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];
}

- (void)clickAction:(UIButton *)button {
    Push1ViewController *push1VC = [[Push1ViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:push1VC];
    [nav.navigationBar setBarTintColor:[UIColor blueColor]];
    [nav.navigationBar setTranslucent:YES];
    [nav.navigationBar setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [nav.view setBackgroundColor:[UIColor whiteColor]];
    
    [self presentViewController:nav animated:YES completion:nil];

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
