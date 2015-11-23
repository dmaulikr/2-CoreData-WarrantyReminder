//
//  WarrantyReminderAppDelegate.h
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewController.h"
#import "Users.h"
@interface WarrantyReminderAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain)UIViewController *objectLogin;
@property (nonatomic, retain) Users *logedInUser;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
