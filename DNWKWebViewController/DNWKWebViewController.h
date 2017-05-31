//
//  DNWKWebViewController.h
//  DNWKWebViewDemo
//
//  Created by dawnnnnn on 2017/5/27.
//  Copyright © 2017年 dawnnnnn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DNWKWebViewController : UIViewController

@property (nonatomic, weak, nullable) id<WKUIDelegate> dnUIDelegate;
@property (nonatomic, weak, nullable) id<WKNavigationDelegate> dnNavigationDelegate;

@property (nonatomic, strong) UIColor *toolbarTintColor;

- (instancetype)initWithAddress:(NSString *)urlString;
- (instancetype)initWithURL:(NSURL *)pageURL;
- (instancetype)initWithURLRequest:(NSURLRequest *)request;

@end

NS_ASSUME_NONNULL_END
