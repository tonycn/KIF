//
//  ViewController.m
//  KITAppDemo
//
//  Created by jianjun on 2019-01-24.
//  Copyright © 2019 Jianjun. All rights reserved.
//

#import "ViewController.h"

@import KIF;

@interface ViewController ()

@property (nonatomic, strong) UIButton *autoTapButton;

@property (nonatomic, strong) UIView *autoTapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.autoTapButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.autoTapButton setTitle:@"Tap" forState:UIControlStateNormal];
    [self.autoTapButton setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [self.view addSubview:self.autoTapButton];
    self.autoTapButton.frame = CGRectMake(50, 100, 180, 60);
    [self.autoTapButton addTarget:self
                         action:@selector(autoTapButtonAction:)
               forControlEvents:UIControlEventTouchUpInside];
    
    self.autoTapView = [[UIView alloc] initWithFrame:CGRectMake(50, 300, 180, 60)];
    self.autoTapView.backgroundColor = UIColor.redColor;
    [self.view addSubview:self.autoTapView];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureAction:)];
    [self.autoTapView addGestureRecognizer:tapGesture];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.autoTapButton tap];
    });
    
    self.autoTapView.userInteractionEnabled = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.autoTapView tap];
    });

}

- (void)autoTapButtonAction:(UIButton *)btn {
    NSLog(@"autoTapButtonAction");
}

- (void)tapGestureAction:(UIGestureRecognizer *)gesture {
    NSLog(@"tapGestureAction");
}

@end
