//
//  MASExampleUpdateView.m
//  TestMasonry
//
//  Created by 赵铭 on 2018/3/2.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "MASExampleUpdateView.h"
#define MAS_SHORTHAND

#define MAS_SHORTHAND_GLOBALS
#import "masonry.h"
@interface MASExampleUpdateView()
@property (nonatomic, strong) UIButton *growingButton;
@property (nonatomic, assign) CGSize buttonSize;
@end


@implementation MASExampleUpdateView
- (id)init{
    self = [super init];
    if (!self) return nil;
    self.growingButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.growingButton setTitle:@"Grow Me!" forState:UIControlStateNormal];
    self.growingButton.layer.borderColor = UIColor.greenColor.CGColor;
    self.growingButton.layer.borderWidth = 3;
    self.growingButton.backgroundColor = [UIColor redColor];
    [self.growingButton addTarget:self action:@selector(didTapGrowButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.growingButton];
    
    self.buttonSize = CGSizeMake(100, 100);
    
    [self.growingButton makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.equalTo(@(self.buttonSize.width)).priorityLow();
        make.height.equalTo(@(self.buttonSize.height)).priorityLow();
        make.width.lessThanOrEqualTo(self);
        make.height.lessThanOrEqualTo(self);
    }];
    
    return self;
}

//- (void)updateConstraints{
//
//    [super updateConstraints];
//}

+ (BOOL)requiresConstraintBasedLayout {
    return YES;
}

- (void)didTapGrowButton:(UIButton *)button {
    self.buttonSize = CGSizeMake(self.buttonSize.width * 2, self.buttonSize.height * 2);

    [self.growingButton updateConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self).offset(20).priorityHigh();
        make.width.equalTo(@(self.buttonSize.width)).priorityLow();
        make.height.equalTo(@(self.buttonSize.height)).priorityLow();
        make.width.lessThanOrEqualTo(self);
        make.height.lessThanOrEqualTo(self);
    }];
    [self layoutIfNeeded];
//
//    // tell constraints they need updating
//    [self setNeedsUpdateConstraints];
//
//    // update constraints now so we can animate the change
//    [self updateConstraintsIfNeeded];
//
//    [UIView animateWithDuration:0.4 animations:^{
//        [self layoutIfNeeded];
//    }];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
