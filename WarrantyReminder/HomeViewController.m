//
//  HomeViewController.m
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import "HomeViewController.h"
#import "AddProductViewController.h"
#import "ViewProductViewController.h"
#import "infoViewController.h"
#import "WebsiteViewController.h"
#import "contactViewController.h"
#import "settingsViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
}

//Navigation hides back button and set Title
-(void)viewWillAppear:(BOOL)animated{
    self.navigationItem.hidesBackButton=YES;
    self.navigationController.navigationBar.tintColor=[UIColor blackColor];
    
    self.navigationItem.title=@"Home";
    
    //Add buttons to navigationbar
    
     UIBarButtonItem *rightButton=[[UIBarButtonItem alloc]initWithTitle:@"Logout" style:UIBarButtonItemStyleBordered target:self action:@selector(logoutButtonClicked)];
     self.navigationItem.rightBarButtonItem=rightButton;
     
    
    
    
}
-(void)logoutButtonClicked{
    
    NSArray *instanceArray = self.navigationController.viewControllers;
    if (instanceArray.count>=2) {
        [self.navigationController popToViewController:[instanceArray objectAtIndex:0] animated:YES];
    }
        
}


-(IBAction)addProductButtonClicked:(id)sender{
  
    AddProductViewController *addProduct=[[AddProductViewController alloc]init];
    [self.navigationController pushViewController:addProduct animated:YES];
    
}
-(IBAction)viewProductButtonClicked:(id)sender{
    ViewProductViewController *viewProduct=[[ViewProductViewController alloc]init];
    [self.navigationController pushViewController:viewProduct animated:YES];
}
-(IBAction)infoButtonClicked:(id)sender{
    infoViewController *info=[[infoViewController alloc]init];
    [self.navigationController pushViewController:info animated:YES];
}
-(IBAction)websiteButtonClicked:(id)sender{
    WebsiteViewController *website=[[WebsiteViewController alloc]init];
    [self.navigationController pushViewController:website animated:YES];
}
-(IBAction)cantactButtonClicked:(id)sender{
    contactViewController *contact=[[contactViewController alloc]init];
    [self.navigationController pushViewController:contact animated:YES];
}
-(IBAction)settingButtonClicked:(id)sender{
    settingsViewController *settings=[[settingsViewController alloc]init];
    [self.navigationController pushViewController:settings animated:YES];
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
