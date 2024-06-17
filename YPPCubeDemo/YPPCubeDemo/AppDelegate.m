//
//  AppDelegate.m
//  YPPCubeDemo
//
//  Created by DZ0400843 on 2021/9/1.
//
#import "ViewController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    ViewController *vc = [ViewController new];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.navigationBar.backgroundColor = UIColor.whiteColor;
    UIWindow *w = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    w.backgroundColor = UIColor.whiteColor;
    w.rootViewController = nav;
    [w makeKeyAndVisible];
    self.window = w;
    return YES;
}


@end
