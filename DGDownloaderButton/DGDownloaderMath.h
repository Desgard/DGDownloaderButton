//
//  DGDownloaderMath.h
//  DGDownloaderButton
//
//  Created by Desgard_Duan on 16/6/27.
//  Copyright © 2016年 Desgard_Duan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DGDownloaderMath : NSObject

+ (CGFloat) calcDistance: (CGPoint)x to: (CGPoint)y;

+ (CGPoint) calcControlPoint: (CGPoint)O1 and: (CGPoint)O2;
+ (CGPoint) calcControlPoint: (CGPoint)O1 and: (CGPoint)O2 random: (bool)isRandom;
+ (CGPoint) calcBeginPoint: (CGPoint)O radius: (CGFloat)r coefficent: (CGFloat)c;
@end
