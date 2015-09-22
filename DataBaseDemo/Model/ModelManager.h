//
//  ModelManager.h
//  DataBaseDemo
//
//  Created by TheAppGuruz-New-6 on 22/02/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"
#import "FMDatabase.h"
#import "Util.h"

@interface ModelManager : NSObject

@property (nonatomic,strong) FMDatabase *database;

+(ModelManager *) getInstance;

-(void) displayData;
-(void) insertData:(Model *)data;
-(void)updateData:(Model *)data;
-(void)deleteData:(Model *)data;

@end
