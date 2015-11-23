//
//  LoginViewController.h
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController{
    IBOutlet UITextField *userNameTextField;
    IBOutlet UITextField *passwordTextField;
    IBOutlet UIButton *rememberMe;
    
    NSManagedObjectContext *managedObjectContext;
	NSMutableArray *eventsArray;
    
    
}


-(IBAction)removeKeyBoard:(id)sender;
-(IBAction)signIn:(id)sender;
-(IBAction)createAnAccount:(id)sender;
-(IBAction)cantAccessMyAccount:(id)sender;
-(IBAction)rememberMe:(id)sender;


@property (nonatomic, retain) NSMutableArray *eventsArray;

@end
