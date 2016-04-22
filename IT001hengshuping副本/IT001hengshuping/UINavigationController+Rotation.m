//
//  UINavigationController+Rotation.m
//  IT001hengshuping
//
//  Created by Box on 15/10/21.
//  Copyright © 2015年 Box. All rights reserved.
//

#import "UINavigationController+Rotation.h"

@implementation UINavigationController (Rotation)

- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

@end
