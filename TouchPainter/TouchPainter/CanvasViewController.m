//
//  CanvasViewController.m
//  TouchPainter
//
//  Created by yyapple on 2017/12/17.
//  Copyright © 2017年 yyapple. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController ()

@property(nonatomic, strong)UIToolbar *toolBar;

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

- (UIToolbar *)toolBar {
    if (!_toolBar) {
        _toolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
        _toolBar.items = [self configToolBarItemsArray];
    }
    return _toolBar;
}

- (NSArray *)configToolBarItemsArray {
    NSArray *toolArray = @[@"delete", @"save", @"open", @"palette", @"undo", @"redo"];
    NSMutableArray *items = [NSMutableArray new];
    for (int i=0; i<toolArray.count; i++) {
        UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:toolArray[i]] style:UIBarButtonItemStylePlain target:self action:@selector(clickToolBarButton:)];
        [items addObject:barItem];
    }
    return [items mutableCopy];
}

- (void)clickToolBarButton:(UIBarButtonItem *)sender {
    
}

@end
