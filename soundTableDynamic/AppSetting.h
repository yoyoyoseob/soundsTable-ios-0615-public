//
//  AppSetting.h
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppSetting : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *details;

@property (nonatomic) BOOL isTogglable;
@property (nonatomic, getter=isOn) BOOL on;
@property (nonatomic) CGFloat value;

@end
