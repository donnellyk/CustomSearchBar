//
//  CustomSearchBarAppDelegate.h
//  CustomSearchBar
//
//  Created by Kevin Donnelly on 9/18/11.
//  Copyright 2011 -. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomSearchBarViewController;

@interface CustomSearchBarAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CustomSearchBarViewController *viewController;

@end
