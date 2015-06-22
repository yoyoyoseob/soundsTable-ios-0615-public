//
//  AppSettingSections.m
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "AppSettingSections.h"

@implementation AppSettingSections

-(instancetype)init{
    self = [self initWithName:@""];
    return self;
}

-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self){
        _sectionName = name;
        _appSettingSections = [[NSMutableArray alloc]init];
    }
    return self;
}

@end
