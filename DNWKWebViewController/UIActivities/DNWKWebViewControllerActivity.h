//
//  DNWKWebViewControllerActivity.h
//  DNWKWebViewDemo
//
//  Created by dawnnnnn on 2017/5/31.
//  Copyright © 2017年 dawnnnnn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNWKWebViewControllerActivity : UIActivity

@property (nonatomic, strong) NSURL *URLToOpen;
@property (nonatomic, strong) NSString *schemePrefix;

@end

NS_ASSUME_NONNULL_END
