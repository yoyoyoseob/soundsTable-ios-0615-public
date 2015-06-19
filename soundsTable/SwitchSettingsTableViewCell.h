//
//  SwitchSettingsTableViewCell.h
//  soundsTable
//
//  Created by Yoseob Lee on 6/18/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchSettingsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UISwitch *onOffSwitch;

@end
