//
//  CreateAnAccountViewController.h
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 04/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateAnAccountViewController : UIViewController<UITextFieldDelegate>{
    IBOutlet UIImageView *imageView;
    IBOutlet UIScrollView *scrolling;
    IBOutlet UITextField *firstName;
    IBOutlet UITextField *lastName;
    IBOutlet UITextField *userName;
    IBOutlet UITextField *createPassword;
    IBOutlet UITextField *confirmPassword;
    IBOutlet UITextField *mobileNo;
    IBOutlet UITextField *emailId;
        
    IBOutlet UIDatePicker *dateOfBirthPicker;
    IBOutlet UITextField *dateOfBirthDisplay;
    
    IBOutlet UIButton *male;
    IBOutlet UIButton *female;
    IBOutlet UIButton *other;
    
    
}
-(IBAction)datePickerValueChanged:(id)sender;
-(IBAction)maleClicked:(id)sender;
-(IBAction)femaleClicked:(id)sender;
-(IBAction)othericked:(id)sender;

-(IBAction)removeKeyBoard:(id)sender;
-(IBAction)submit:(id)sender;
-(IBAction)cancel:(id)sender;



@end
