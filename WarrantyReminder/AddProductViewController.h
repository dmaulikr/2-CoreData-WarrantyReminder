//
//  AddProductViewController.h
//  WarrantyReminder
//
//  Created by Srinivas Mamidala on 12/02/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddProductViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>{
    
    IBOutlet UIScrollView *myScrollView;
    IBOutlet UIImageView *imageView;
    
    UIActionSheet *actinSheet;
    
    
}
-(IBAction)AddImageButtonClicked:(id)sender;

@end
