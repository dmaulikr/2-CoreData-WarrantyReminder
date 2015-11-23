//
//  CantAccessYourAccountViewController.m
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import "CantAccessYourAccountViewController.h"

@interface CantAccessYourAccountViewController ()

@end

@implementation CantAccessYourAccountViewController

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
    
    self.navigationItem.title=@"Forgot password";
}

-(IBAction)submitButtonClicked:(id)sender{
    
}
-(IBAction)cancelButtonClicked:(id)sender{
    
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
