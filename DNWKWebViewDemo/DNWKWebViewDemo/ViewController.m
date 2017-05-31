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
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 100, 375, 80)];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"pushWebView" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pushWebViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)pushWebViewController {
    NSURL *URL = [NSURL URLWithString:@"http://sf.gg"];
    DNWKWebViewController *webViewController = [[DNWKWebViewController alloc] initWithURL:URL];
    webViewController.toolbarTintColor = [UIColor blueColor];
    [self.navigationController pushViewController:webViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
