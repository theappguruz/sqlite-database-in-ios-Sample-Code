//
//  ViewController.m
//  DataBaseDemo
//
//  Created by TheAppGuruz-New-6 on 22/02/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtrollnum,txtname;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(Model *)getDataFromTextField
{
    Model *model=[[Model alloc]init];
    model.rollnum=[txtrollnum text];
    model.name=[txtname text];
    return model;
}

- (IBAction)btnHideKeyboardClicked:(id)sender
{
    [txtrollnum resignFirstResponder];
    [txtname resignFirstResponder];
}

- (IBAction)btnInsertClicked:(id)sender
{
    ModelManager *mgrObj=[ModelManager getInstance];
    [mgrObj insertData:[self getDataFromTextField]];
}

- (IBAction)btnUpdateClicked:(id)sender
{
    ModelManager *mgrObj=[ModelManager getInstance];
    [mgrObj updateData:[self getDataFromTextField]];
}
- (IBAction)btnDeleteClicked:(id)sender
{
    ModelManager *mgrObj=[ModelManager getInstance];
    [mgrObj deleteData:[self getDataFromTextField]];
}

- (IBAction)btnDisplayClicked:(id)sender
{
    ModelManager *mgrObj=[ModelManager getInstance];
    [mgrObj displayData];

}
@end
