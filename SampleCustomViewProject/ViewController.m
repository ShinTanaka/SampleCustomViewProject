//
//  ViewController.m
//  SampleCustomViewProject
//
//  Created by ShinTanaka on 2015/12/24.
//  Copyright © 2015年 ShinTanaka. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomView *customView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:customView];

    // CustomViewのAutoLayout設定
    {
        customView.translatesAutoresizingMaskIntoConstraints = NO;
        NSLayoutConstraint *customViewHeightConstraint = [NSLayoutConstraint constraintWithItem:customView
                                                                                      attribute:NSLayoutAttributeHeight
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:nil
                                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                                     multiplier:1
                                                                                       constant:200];
        NSLayoutConstraint *customViewWidthtConstraint = [NSLayoutConstraint constraintWithItem:customView
                                                                                      attribute:NSLayoutAttributeWidth
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:nil
                                                                                      attribute:NSLayoutAttributeNotAnAttribute
                                                                                     multiplier:1
                                                                                       constant:200];
        
        NSLayoutConstraint *customViewTopConstraint = [NSLayoutConstraint constraintWithItem:customView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.view
                                                                                   attribute:NSLayoutAttributeBottom
                                                                                  multiplier:1
                                                                                    constant:-customViewHeightConstraint.constant];
        NSLayoutConstraint *customViewCenterXConstraint = [NSLayoutConstraint constraintWithItem:customView
                                                                                       attribute:NSLayoutAttributeCenterX
                                                                                       relatedBy:NSLayoutRelationEqual
                                                                                          toItem:self.view
                                                                                       attribute:NSLayoutAttributeCenterX
                                                                                      multiplier:1
                                                                                        constant:0];
        
        [self.view addConstraints:@[customViewTopConstraint,
                                    customViewHeightConstraint,
                                    customViewWidthtConstraint,
                                    customViewCenterXConstraint]];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
