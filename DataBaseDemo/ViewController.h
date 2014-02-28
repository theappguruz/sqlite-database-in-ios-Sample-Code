//
//  ViewController.h
//  DataBaseDemo
//
//  Created by TheAppGuruz-New-6 on 22/02/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ModelManager.h"

@interface ViewController : UIViewController
- (IBAction)btnHideKeyboardClicked:(id)sender;
- (IBAction)btnInsertClicked:(id)sender;
- (IBAction)btnUpdateClicked:(id)sender;
- (IBAction)btnDeleteClicked:(id)sender;
- (IBAction)btnDisplayClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtrollnum;
@property (weak, nonatomic) IBOutlet UITextField *txtname;

@end
