//
//  DNWKWebViewControllerActivitySafari.m
//  DNWKWebViewDemo
//
//  Created by dawnnnnn on 2017/5/31.
//  Copyright © 2017年 dawnnnnn. All rights reserved.
//

#import "DNWKWebViewControllerActivitySafari.h"

@implementation DNWKWebViewControllerActivitySafari

- (NSString *)activityTitle {
    return NSLocalizedStringFromTable(@"Open in Safari", @"SVWebViewController", nil);
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    for (id activityItem in activityItems) {
        if ([activityItem isKindOfClass:[NSURL class]] && [[UIApplication sharedApplication] canOpenURL:activityItem]) {
            return YES;
        }
    }
    return NO;
}

- (void)performActivity {
    BOOL completed = [[UIApplication sharedApplication] openURL:self.URLToOpen];
    [self activityDidFinish:completed];
}

@end
