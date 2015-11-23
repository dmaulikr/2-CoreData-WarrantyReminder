//
//  LoginViewController.m
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import "LoginViewController.h"
#import "CreateAnAccountViewController.h"
#import "HomeViewController.h"
#import "CantAccessYourAccountViewController.h"
#import "Users.h"
#import "WarrantyReminderAppDelegate.h"

@interface LoginViewController ()

@end

@implementation LoginViewController
@synthesize eventsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.title=@"Login";
    
    //kishore siva
}

//For Navigationbar Hidden
-(void)viewWillAppear:(BOOL)animated{
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
     
       

}
-(void)viewWillDisappear:(BOOL)animated{
    [[self navigationController] setNavigationBarHidden:NO animated:YES];
}

-(IBAction)removeKeyBoard:(id)sender{
    [userNameTextField resignFirstResponder];
    [passwordTextField resignFirstResponder];
    
}
-(IBAction)signIn:(id)sender{
    
    WarrantyReminderAppDelegate *appDelegate = (WarrantyReminderAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
	NSEntityDescription *entity = [NSEntityDescription entityForName:@"Users" inManagedObjectContext:appDelegate.managedObjectContext];
	[request setEntity:entity];
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"userName = %@ AND password = %@",userNameTextField.text,passwordTextField.text];
    [request setPredicate:predicate];
    // Execute the fetch -- create a mutable copy of the result.
	NSError *error = nil;
	NSMutableArray *mutableFetchResults = [[appDelegate.managedObjectContext executeFetchRequest:request error:&error] mutableCopy];
	if ([mutableFetchResults count]>0) {
		// Handle the error.
        appDelegate.logedInUser = (Users *)[mutableFetchResults objectAtIndex:0];
        HomeViewController *home=[[HomeViewController alloc]init];
        [self.navigationController pushViewController:home animated:YES];
	}

    
}
-(IBAction)createAnAccount:(id)sender{
    CreateAnAccountViewController *createAnAccount=[[CreateAnAccountViewController alloc]init];
    [self.navigationController pushViewController:createAnAccount animated:YES];
    
}
-(IBAction)cantAccessMyAccount:(id)sender{
  
    CantAccessYourAccountViewController *notAccess=[[CantAccessYourAccountViewController alloc]init];
    [self.navigationController pushViewController:notAccess animated:YES];
    
    
}
-(IBAction)rememberMe:(id)sender{
    
    if ([rememberMe isSelected]) {
        [rememberMe setSelected:NO];
    }else{
        [rememberMe setSelected:YES];
    }
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
