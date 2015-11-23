//
//  CreateAnAccountViewController.m
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import "CreateAnAccountViewController.h"
#import "LoginViewController.h"
#import "WarrantyReminderAppDelegate.h"
#import "Users.h"
@interface CreateAnAccountViewController ()

@end

@implementation CreateAnAccountViewController

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
    
    [scrolling setContentSize:CGSizeMake(320, 700)];;
    dateOfBirthDisplay.delegate=self;
    
    self.navigationItem.hidesBackButton=YES;
    self.title=@"Registration";
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];

    
}




//Remove Keyboard
-(IBAction)removeKeyBoard:(id)sender{
    [firstName resignFirstResponder];
    [lastName resignFirstResponder];
    [userName resignFirstResponder];
    [createPassword resignFirstResponder];
    [confirmPassword resignFirstResponder];
    [mobileNo resignFirstResponder];
    [emailId resignFirstResponder];
    
}



//Date of Birth
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (dateOfBirthDisplay.editing==YES) {
        if (dateOfBirthPicker.hidden==YES) {
            [dateOfBirthPicker setHidden:NO];
        }else{
            [dateOfBirthPicker setHidden:YES];
        }
        
        
    }
    [dateOfBirthDisplay resignFirstResponder];
    
}
-(IBAction)datePickerValueChanged:(id)sender{
    NSDate *selectedDate=dateOfBirthPicker.date;
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"MMMM dd, yyyy"];
    NSString *dateString=[dateFormatter stringFromDate:selectedDate];
    [dateOfBirthDisplay setText:dateString];
    
    
}

//Gender
-(IBAction)maleClicked:(id)sender{
    
    if ([male isSelected]) {
        [female setSelected:NO];
        [other setSelected:NO];
    }else{
        [male setSelected:YES];
        [female setSelected:NO];
        [other setSelected:NO];
    }
    [dateOfBirthPicker setHidden:YES];
}

-(IBAction)femaleClicked:(id)sender{
    
    if ([female isSelected]) {
        [male setSelected:NO];
        [other setSelected:NO];
    }else{
        [female setSelected:YES];
        [male setSelected:NO];
        [other setSelected:NO];
        
    }
    [dateOfBirthPicker setHidden:YES];
}

-(IBAction)othericked:(id)sender{
    
    if ([other isSelected]) {
        [female setSelected:NO];
        [male setSelected:NO];
    }else{
        [other setSelected:YES];
        [female setSelected:NO];
        [male setSelected:NO];
    }
    [dateOfBirthPicker setHidden:YES];
}

//Submit Button

-(IBAction)submit:(id)sender{
    
    WarrantyReminderAppDelegate *appDelegate = (WarrantyReminderAppDelegate *)[[UIApplication sharedApplication] delegate];
    
	Users *event = (Users *)[NSEntityDescription insertNewObjectForEntityForName:@"Users" inManagedObjectContext:appDelegate.managedObjectContext];
	
	
	event.userName = userName.text;
	event.password = createPassword.text;
	event.email = emailId.text;
    event.phoneNo = mobileNo.text;
    if ([male isSelected]) {
        event.gender = @"Male";
    }
    else{
        event.gender = @"Female";
    }
    event.dateOfBirth = dateOfBirthPicker.date;
    NSError *error = nil;
    if (![appDelegate.managedObjectContext save:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development. If it is not possible to recover from the error, display an alert panel that instructs the user to quit the application by pressing the Home button.
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    else{
        LoginViewController *objectHome=[[LoginViewController alloc]init];
        [self.navigationController pushViewController:objectHome animated:YES];
    }
    
}

//Cancel Button
-(IBAction)cancel:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
    
    
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
