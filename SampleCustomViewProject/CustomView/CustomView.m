//
//  CustomView.m
//  SampleCustomViewProject
//
//  Created by ShinTanaka on 2015/12/24.
//  Copyright © 2015年 ShinTanaka. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

// OverRide(xibやStoryboardから呼び出された時に呼ばれる)
- (id)initWithCoder:(NSCoder *)aDecoder
{
self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}

// OverRide(コードから生成時に呼ばれる)
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

/**
 *  共通初期化
 */
- (void)commonInit
{
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil] objectAtIndex:0];
    view.frame = self.bounds;
    view.translatesAutoresizingMaskIntoConstraints = YES;
    view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self addSubview:view];
}


@end
