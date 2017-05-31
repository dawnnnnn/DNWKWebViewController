//
//  DNWKWebViewControllerActivity.m
//  DNWKWebViewDemo
//
//  Created by dawnnnnn on 2017/5/31.
//  Copyright © 2017年 dawnnnnn. All rights reserved.
//

#import "DNWKWebViewControllerActivity.h"

@implementation DNWKWebViewControllerActivity

- (NSString *)activityType {
    return NSStringFromClass([self class]);
}

- (UIImage *)activityImage {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        return [UIImage imageNamed:[self.activityType stringByAppendingString:@"-iPad"]];
    else
        return [UIImage imageNamed:self.activityType];
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    for (id activityItem in activityItems) {
        if ([activityItem isKindOfClass:[NSURL class]]) {
            self.URLToOpen = activityItem;
        }
    }
}

@end
