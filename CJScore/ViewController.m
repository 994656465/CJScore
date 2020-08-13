//
//  ViewController.m
//  CJScore
//
//  Created by mac on 2020/8/13.
//  Copyright © 2020 SmartPig. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    方式一
//    仅支持iOS10.3+ 且每个APP内每年最多弹出3次评分
//      #import <StoreKit/StoreKit.h>
//    [SKStoreReviewController requestReview];

    //    方式二
    NSString *APPID = @"";

    NSString *urlStr = [NSString stringWithFormat: @"itms-apps://itunes.apple.com/app/id%@?action=write-review",APPID];
    
    NSURL * url  = [NSURL URLWithString:urlStr];
      [[UIApplication sharedApplication] openURL:url options:@{UIApplicationOpenURLOptionsSourceApplicationKey:@YES} completionHandler:nil];
}
@end
