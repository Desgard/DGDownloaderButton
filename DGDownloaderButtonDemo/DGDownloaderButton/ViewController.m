//
//  ViewController.m
//  DGDownloaderButton
//
//  Created by Desgard_Duan on 16/6/25.
//  Copyright © 2016年 Desgard_Duan. All rights reserved.
//

#import "ViewController.h"
#import "DGDownloaderButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    DGDownloaderButton *but = [[DGDownloaderButton alloc] initWithFrame: CGRectMake(0, 0, 150, 150)];
    but.center = self.view.center;
    [self.view addSubview: but];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
