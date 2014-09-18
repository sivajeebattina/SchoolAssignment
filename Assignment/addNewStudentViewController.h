//
//  addNewStudentViewController.h
//  Assignment
//
//  Created by pcs20 on 9/17/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addNewStudentViewController : UIViewController


@property(nonatomic,strong)IBOutlet UITextField *studentNameTextField;
@property(nonatomic,strong)IBOutlet UIButton *saveButton;

-(IBAction)saveClicked:(id)sender;

@end
