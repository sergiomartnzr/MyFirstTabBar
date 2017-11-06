//
//  AppDelegate.h
//  MyFirstTabBar
//
//  Created by Sergio Martinez on 11/1/17.
//  Copyright © 2017 Sergio Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

