//
//  DGDownloaderButton.m
//  DGDownloaderButton
//
//  Created by Desgard_Duan on 16/6/25.
//  Copyright © 2016年 Desgard_Duan. All rights reserved.
//

#import "DGDownloaderButton.h"
#import "DGDownloaderButtonProgressView.h"


@interface DGDownloaderButton()

@property (nonatomic, strong) CAShapeLayer *arrow;
@property (nonatomic, strong) DGDownloaderButtonProgressView *p;

@end

@implementation DGDownloaderButton

#pragma mark - Override
- (instancetype) initWithFrame: (CGRect)frame {
    if (self = [super initWithFrame: frame]) {
        self.p = [[DGDownloaderButtonProgressView alloc] initWithFrame: frame];
        [self addSubview: self.p];
        
        [self addTarget: self
                 action: @selector(startUpDonwLoadAction)
       forControlEvents: UIControlEventTouchUpInside];
        
        [self test];
    }
    return self;
}

#pragma mark - 绘制箭头折线
- (UIBezierPath *) drawArrow {
    CGFloat startPos = self.frame.size.width / 3.f;
    CGFloat centerPos = self.frame.size.height / 2.f;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    [path moveToPoint: CGPointMake(centerPos, startPos)];
    [path addLineToPoint: CGPointMake(centerPos, 2 * startPos)];
    [path addLineToPoint: CGPointMake(startPos, centerPos)];
    [path moveToPoint: CGPointMake(centerPos, 2 * startPos)];
    [path addLineToPoint: CGPointMake(2 * startPos, centerPos)];
    return path;
}

#pragma mark - Click Action
- (void) startUpDonwLoadAction {
    NSLog(@"click");
    [self.arrow removeFromSuperlayer];
    [self.p setNextProgress: 1];
}

- (void) test {
    self.arrow = [CAShapeLayer layer];
    self.arrow.strokeColor = DGDownloaderButtonDefaultColor.CGColor;
    self.arrow.lineWidth = 3;
    self.arrow.lineJoin = kCALineJoinRound;
    self.arrow.lineCap = kCALineCapRound;
    self.arrow.path = [self drawArrow].CGPath;
    [self.layer addSublayer: self.arrow];
}

@end
