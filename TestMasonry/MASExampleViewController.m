//
//  MASExampleViewController.m
//  TestMasonry
//
//  Created by 赵铭 on 2018/3/2.
//  Copyright © 2018年 zm. All rights reserved.
//

#import "MASExampleViewController.h"

@interface MASExampleViewController ()
@property (nonatomic, strong) Class viewClass;
@end

@implementation MASExampleViewController
- (id)initWithTitle:(NSString *)title
          viewClass:(Class)viewClass{
    if (self = [super init]) {
        self.title = title;
        self.viewClass = viewClass;
    }
    return self;
}
- (void)loadView{
    self.view = self.viewClass.new;
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#ifdef __IPHONE_7_0
- (UIRectEdge)edgesForExtendedLayout {
    return UIRectEdgeNone;
}
#endif

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
