//
//  ViewController.m
//  Baimao
//
//  Created by GOKIT on 2017/9/29.
//  Copyright © 2017年 GOKIT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  后台执行：
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSURL * url = [NSURL URLWithString:@"http://www.baidu.com"];
        NSError * error;
        NSString * data = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&error];
        if (data != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                NSLog(@"call back, the data is: %@", data);
            });
        } else {
            NSLog(@"error when download:%@", error);
        }
    });

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
