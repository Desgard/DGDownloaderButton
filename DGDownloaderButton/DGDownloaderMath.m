//
//  DGDownloaderMath.m
//  DGDownloaderButton
//
//  Created by Desgard_Duan on 16/6/27.
//  Copyright © 2016年 Desgard_Duan. All rights reserved.
//

#import "DGDownloaderMath.h"
#import <UIKit/UIKit.h>

@implementation DGDownloaderMath

#pragma mark - 计算欧几里得距离
+ (CGFloat) calcDistance: (CGPoint)x to: (CGPoint)y {
    CGFloat a1 = x.x - y.x;
    CGFloat a2 = x.y - y.y;
    return sqrt(a1 * a1 + a2 * a2);
}

#pragma mark - 计算斜率
+ (CGFloat) calcGradient: (CGPoint)A1 and: (CGPoint)A2 {
    return (A1.x - A2.x) / (A1.y - A2.y);
}

#pragma mark - 计算Control Point Positon
+ (CGPoint) calcControlPoint: (CGPoint)O1 and: (CGPoint)O2 {
    return [self calcControlPoint: O1 and: O2 random: NO];
}

+ (CGPoint) calcControlPoint: (CGPoint)O1 and: (CGPoint)O2 random: (bool)isRandom {
    CGPoint O_centre = CGPointMake((O1.x + O2.x) / 2.f, (O1.y + O2.y) / 2.f);
    CGFloat d = [self calcDistance: O_centre to: O1];
    CGFloat k = d / 40.f;
    if (isRandom) {
        int isRandom_int = arc4random() % 2;
        if (isRandom_int) k = -k;
        
    }
    CGFloat new_x = (O1.y - O2.y) / 2.f / k + (O1.x + O2.x) / 2.f;
    CGFloat new_y = - ((O1.x - O2.x) / 2.f / k - (O1.y + O2.y) / 2.f);
    
    return CGPointMake(new_x, new_y);
}

#pragma mark - 计算Begin Point Postion
+ (CGPoint) calcBeginPoint: (CGPoint)O radius: (CGFloat)r coefficent: (CGFloat)c {
    CGFloat dis = r * c;
    CGPoint ans;
    // 生成角度
    int angel = arc4random() % 360;
    if (angel <= 180) {
        double theta = (double)angel / 360 * M_PI * 2;
        ans = CGPointMake(O.x + dis * cos(theta), O.y - dis * sin(theta));
    } else {
        double theta = (double)(360 - angel) / 360 * M_PI * 2;
        ans = CGPointMake(O.x + dis * cos(theta), O.y + dis * sin(theta));
    }
    return ans;
}

@end
