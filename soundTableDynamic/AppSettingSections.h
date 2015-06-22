//
//  AppSettingSections.h
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppSetting.h"

@interface AppSettingSections : NSObject

@property (nonatomic, strong) NSMutableArray *appSettingSections;
@property (nonatomic, strong) NSString *sectionName;

-(instancetype)initWithName:(NSString *)name;
-(instancetype)init;

@end
