//
//  ViewController.m
//  旋转倒计时
//
//  Created by ekhome on 16/11/26.
//  Copyright © 2016年 xiaofei. All rights reserved.
//

#import "ViewController.h"
#import "PFProgressView.h"
@interface ViewController ()
{
PFProgressView *progressView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    progressView = [[PFProgressView alloc]initWithFrame:CGRectMake(40,80, 100, 100)];
    progressView.progressColor = [UIColor redColor];
    progressView.progressStrokeWidth = 5.f;
    progressView.progressTrackColor = [UIColor whiteColor];
    [self.view addSubview:progressView];
    [NSTimer scheduledTimerWithTimeInterval:1.f target:self selector:@selector(changeProgressValue) userInfo:nil repeats:YES];
}


- (void)changeProgressValue
{
    progressView.progressValue += 1/120.0f;
    if (progressView.progressValue>=1.f) {
        progressView.progressValue = 1/120.0f;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
