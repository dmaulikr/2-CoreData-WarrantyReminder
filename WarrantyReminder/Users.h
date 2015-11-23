//
//  Users.h
//  WarrantyReminder
//
//  Created by Cnu Mamidala on 2/20/13.
//  Copyright (c) 2013 Srinivas Mamidala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Users : NSManagedObject {
@private
}
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSString * userName;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * phoneNo;
@property (nonatomic, retain) NSDate * dateOfBirth;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSString * address;

@end
