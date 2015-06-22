//
//  SliderSettingsTableViewCell.h
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderSettingsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *volumeLowImage;
@property (weak, nonatomic) IBOutlet UIImageView *volumeHighImage;

@end

