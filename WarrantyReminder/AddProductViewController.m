//
//  AddProductViewController.m
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 12/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import "AddProductViewController.h"

@interface AddProductViewController ()

@end

@implementation AddProductViewController

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
    
    [myScrollView setContentSize:CGSizeMake(320, 800)];
}

-(IBAction)AddImageButtonClicked:(id)sender{
    
    actinSheet=[[UIActionSheet alloc]initWithTitle:@"" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Library",@"Camera", nil];
    
    [actinSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex==0) {
        UIImagePickerController *imagePicker=[[UIImagePickerController alloc]init];
        imagePicker.delegate=self;
        [imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        [self presentModalViewController:imagePicker animated:YES];
    }else if (buttonIndex==1){
        
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
            imagePicker.delegate = self;
            [imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
            [self presentModalViewController:imagePicker animated:YES];
            
        }
        
    }

}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo {
    [imageView setImage:image];
    [self dismissModalViewControllerAnimated:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissModalViewControllerAnimated:YES];
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
