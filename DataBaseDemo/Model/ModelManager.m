//
//  ModelManager.m
//  DataBaseDemo
//
//  Created by TheAppGuruz-New-6 on 22/02/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

#import "ModelManager.h"


@implementation ModelManager

static ModelManager *instance=nil;

@synthesize database=_database;

+(ModelManager *) getInstance
{
    
    if(!instance)
    {
        instance=[[ModelManager alloc]init];
        instance.database=[FMDatabase databaseWithPath:[Util getFilePath:@"studentdb.sqlite"]];
    }
    return instance;
}

-(void)insertData:(Model *)data
{
    [instance.database open];
    BOOL isInserted=[instance.database executeUpdate:@"INSERT INTO studentInfo (rollnum,name) VALUES (?,?)",data.rollnum,data.name];
    [instance.database close];
    
    if(isInserted)
        NSLog(@"Inserted Successfully");
    else
        NSLog(@"Error occured while inserting");
}

-(void)updateData:(Model *)data
{
    [instance.database open];
    BOOL isUpdated=[instance.database executeUpdate:@"UPDATE studentInfo SET name=? WHERE rollnum=?",data.name,data.rollnum];
    [instance.database close];
    
    if(isUpdated)
        NSLog(@"Updated Successfully");
    else
        NSLog(@"Error occured while Updating");
}

-(void)deleteData:(Model *)data
{
    [instance.database open];
    BOOL isDeleted=[instance.database executeUpdate:@"DELETE FROM studentInfo WHERE rollnum=?",data.rollnum];
    [instance.database close];
    
    if(isDeleted)
        NSLog(@"Deleted Successfully");
    else
        NSLog(@"Error occured while Deleting");
}

-(void) displayData
{
    [instance.database open];
    FMResultSet *resultSet=[instance.database executeQuery:@"SELECT * FROM studentInfo"];
    if(resultSet)
    {
        while([resultSet next])
            NSLog(@"Roll number : %@    Name : %@",[resultSet stringForColumn:@"rollnum"],[resultSet stringForColumn:@"name"]);
    }
    [instance.database close];
}

@end
