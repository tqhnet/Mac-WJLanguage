//
//  AppDelegate.m
//  WJLanguage
//
//  Created by tqh on 2018/5/23.
//  Copyright © 2018年 tqh. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [self initMainWindow];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

#pragma mark - 设置主窗口
-(void)initMainWindow{
    self.mainVC = [[MainWindowController alloc]initWithWindowNibName:@"MainWindowController"];
    //让window居中显示
    [[self.mainVC window] center];
    //设置显示窗口
    [self.mainVC.window orderFront:nil];
}

#pragma mark - 点击Dock上的图标 回到主窗口
-(BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag
{
    [NSApp activateIgnoringOtherApps:NO];
    [self.mainVC.window makeKeyAndOrderFront:self];
    
    return YES;
}

@end
