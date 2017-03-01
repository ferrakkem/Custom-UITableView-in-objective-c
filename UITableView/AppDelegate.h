//
//  AppDelegate.h
//  UITableView
//
//  Created by Ferrakkem on 3/1/17.
//  Copyright © 2017 Ferrakkem. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

