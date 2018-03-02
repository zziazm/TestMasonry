//
//  MASExampleBasicView.m
//  TestMasonry
//
//  Created by 赵铭 on 2018/3/2.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "MASExampleBasicView.h"
#define MAS_SHORTHAND

#define MAS_SHORTHAND_GLOBALS

#import "masonry.h"
@implementation MASExampleBasicView
- (id)init{
    self = [super init];
    if (!self) {
        return nil;
    }
    UIView *greenView = [UIView new];
    greenView.backgroundColor = [UIColor greenColor];
//    greenView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:greenView];
    
    UIView *redView = [UIView new];
    redView.backgroundColor = [UIColor redColor];
//    redView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:redView];
    
    UIView *blueView = [UIView new];
    blueView.backgroundColor = [UIColor blueColor];
    [self addSubview:blueView];
    
    UIView *superview = self;
    int padding = 10;
    
//    [superview addConstraints:@[
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeTopMargin multiplier:1 constant:10],
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeLeading multiplier:1 constant:10],
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeBottom multiplier:1 constant:-10],
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:redView attribute:NSLayoutAttributeLeading multiplier:1 constant:-10],
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:redView attribute:NSLayoutAttributeWidth multiplier:1 constant:0],
//                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:redView attribute:NSLayoutAttributeHeight multiplier:1 constant:0]
//                                ]];
//
//
//    [superview addConstraints:@[
//                                [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeTopMargin multiplier:1 constant:10],
//                                [NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:superview attribute:NSLayoutAttributeTrailing multiplier:1 constant:-10]
//                                ]];
//
    
    
    
    
    
    
    [greenView makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.top).offset(padding);
        make.left.equalTo(superview.left).offset(padding);
        make.bottom.equalTo(blueView.top).offset(-padding);//红色视图和蓝色视图间距是padding
        make.right.equalTo(redView.left).offset(-padding);
        make.width.equalTo(redView.width);
        make.height.equalTo(redView.height);
        make.height.equalTo(blueView.height);

    }];

    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.mas_top).with.offset(padding);
        make.left.equalTo(superview.mas_left).with.offset(padding);
        make.bottom.equalTo(blueView.top).with.offset(-padding);//绿色视图和蓝色视图间距是padding
        make.right.equalTo(redView.mas_left).with.offset(-padding);//绿色视图和红色视图的间距是padding
        make.width.equalTo(redView.mas_width);
        make.height.equalTo(redView.mas_height);
        make.height.equalTo(blueView.mas_height);

    }];

    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superview.mas_top).offset(padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
    }];

    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superview.mas_left).offset(padding);
        make.bottom.equalTo(superview.mas_bottom).offset(-padding);
        make.right.equalTo(superview.mas_right).offset(-padding);
    }];
    
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
