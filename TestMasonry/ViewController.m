//
//  ViewController.m
//  TestMasonry
//
//  Created by 赵铭 on 2018/3/2.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView * superView = self.view;
    UIView * view1 = [UIView new];
    view1.translatesAutoresizingMaskIntoConstraints = NO;
    view1.backgroundColor = [UIColor greenColor];
    [superView addSubview:view1];
    
    
    /*
    //使用NSLayoutConstraint
    [superView addConstraints:@[
                                [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTopMargin multiplier:1 constant:10],
                                [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeLeading multiplier:1 constant:10],
                                [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeBottom multiplier:1 constant:-10],
                                [NSLayoutConstraint constraintWithItem:view1 attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTrailing multiplier:1 constant:-10]
                                ]];
     */
    /*
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView.mas_topMargin).with.offset(10);
        make.leading.equalTo(superView.mas_leading).with.offset(10);
        make.bottom.equalTo(superView.mas_bottom).with.inset(10);
        make.trailing.equalTo(superView.mas_trailing).with.offset(-10);
    }];
     */
    /*
     [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
         
        make.top.equalTo(superView.mas_topMargin).with.inset(10);
        make.leading.equalTo(superView.mas_leading).with.inset(10);
        make.bottom.equalTo(superView.mas_bottom).with.inset(10);
        make.trailing.equalTo(superView.mas_trailing).with.inset(10);
     }];
     */
    /*
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(74);
        make.leading.mas_equalTo(10);
        make.bottom.mas_equalTo(-10);
        make.trailing.mas_equalTo(-10);
       
    }];
     */
    
    
//    UIEdgeInsets edge = UIEdgeInsetsMake(10, 10, 10, 10);
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(superView).with.insets(edge);
//    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
