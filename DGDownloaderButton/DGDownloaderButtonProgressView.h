//
//  DGDownloaderButtonProgressView.h
//  DGDownloaderButton
//
//  Created by Desgard_Duan on 16/6/27.
//  Copyright © 2016年 Desgard_Duan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DGDownloaderButtonProgressView : UIView


@property (assign, nonatomic, readonly) bool isProgressing;
@property (assign, nonatomic, readonly) bool isComplete;
@property (assign, nonatomic, readonly) CGFloat progress;


- (void) setNextProgress: (CGFloat)nextProgress;

@end
