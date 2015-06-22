//
//  ToggleableSettingsTableViewCell.h
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToggleableSettingsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *settingNameLabel;
@property (weak, nonatomic) IBOutlet UISwitch *onOffSwitch;


@end
