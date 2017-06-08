//
//  ViewController.m
//  DNWKWebViewDemo
//
//  Created by dawnnnnn on 2017/5/27.
//  Copyright © 2017年 dawnnnnn. All rights reserved.
//

#import "ViewController.h"
#import "DNWKWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setFrame:CGRectMake(0, 100, 375, 80)];
    button1.backgroundColor = [UIColor orangeColor];
    [button1 setTitle:@"pushWebView" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(pushWebViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2 setFrame:CGRectMake(0, 280, 375, 80)];
    button2.backgroundColor = [UIColor orangeColor];
    [button2 setTitle:@"presentWebView" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(presentWebViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

- (void)pushWebViewController {
    NSURL *URL = [NSURL URLWithString:@"http://sf.gg"];
    DNWKWebViewController *webViewController = [[DNWKWebViewController alloc] initWithURL:URL];
    webViewController.toolbarTintColor = [UIColor orangeColor];
    [self.navigationController pushViewController:webViewController animated:YES];
}

- (void)presentWebViewController {
    NSURL *URL = [NSURL URLWithString:@"http://oopser.com"];
    DNWKWebViewController *webViewController = [[DNWKWebViewController alloc] initWithURL:URL];
    webViewController.toolbarTintColor = [UIColor orangeColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:webViewController];
    [self presentViewController:nav animated:YES completion:NULL];
}


@end
