//
//  AppDelegate.m
//  StatusBarApplication
//
//  Created by Bradley Morgan on 8/30/12.
//  Copyright (c) 2012 Bradley Morgan. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    // create a status item on the "system status bar"
    
    appStatusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    
    // set basic options
    
    [appStatusItem setTitle:@"My App"];
    [appStatusItem setHighlightMode:YES];
    [appStatusItem setEnabled:YES];
    
    // add an image
    
    NSImage *appStatusItemIcon = [NSImage imageNamed:@"server.png"];
    
    [appStatusItem setImage:appStatusItemIcon];
    
    // create a menu
    
    NSMenu *appStatusItemMenu = [[NSMenu alloc] init];
    
    [appStatusItemMenu setTitle:@"Options"];
    
    // create items for the menu
    
    NSMenuItem *appStatusMenuItemOne = [[NSMenuItem alloc] initWithTitle:@"Options" action:@selector(selectedOptions) keyEquivalent:@"O"]; // selector defined below
    
    NSMenuItem *appStatusMenuItemTwo = [[NSMenuItem alloc] initWithTitle:@"Exit" action:@selector(selectedExit) keyEquivalent:@"X"]; // selector defined below
    
    // add the items to the menu
    
    [appStatusItemMenu addItem:appStatusMenuItemOne];
    [appStatusItemMenu addItem:appStatusMenuItemTwo];
    
    // add the menu to the "status item"
    
    [appStatusItem setMenu:appStatusItemMenu];
    
}

- (void) selectedOptions {
    
    // just an alert as a placeholder, would probably create and open another view here
    
    NSAlert *optionsAlert = [NSAlert alertWithMessageText:@"Application Options"
                    defaultButton:@"OK" alternateButton:nil
                      otherButton:nil informativeTextWithFormat:@"This would be another view containing some application options or other features."];
    
    [optionsAlert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:nil contextInfo:nil];
    
    
}

- (void) selectedExit {
    
    exit(0);
    
}

@end
