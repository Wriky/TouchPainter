//
//  CoordiatingController.m
//  TouchPainter
//
//  Created by yyapple on 2017/12/17.
//  Copyright © 2017年 yyapple. All rights reserved.
//

#import "CoordiatingController.h"

@implementation CoordiatingController

+ (instancetype)sharedInstance {
    static CoordiatingController *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CoordiatingController alloc] init];
    });
    return instance;
}


+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

@end
