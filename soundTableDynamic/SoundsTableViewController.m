//
//  SoundsTableViewController.m
//  soundTableDynamic
//
//  Created by Yoseob Lee on 6/19/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "SoundsTableViewController.h"
#import "SliderSettingsTableViewCell.h"
#import "ToggleableSettingsTableViewCell.h"
#import "SelectOptionTableViewCell.h"
#import "AppSetting.h"
#import "AppSettingSections.h"

@interface UITableViewController ()


@end

@implementation SoundsTableViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
//    UITableView *grouped = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
//    self.tableView = grouped;
    
    self.appSections = [[NSMutableArray alloc]init];
    
    AppSettingSections *sectionOne = [[AppSettingSections alloc]initWithName:@"Vibrate"];
    
    AppSetting *vibrateOnRing = [[AppSetting alloc]init];
    vibrateOnRing.name = @"Vibrate on Ring";
    vibrateOnRing.isTogglable = YES;
    vibrateOnRing.on = YES;
    
    AppSetting *vibrateOnSilent = [[AppSetting alloc]init];
    vibrateOnSilent.name = @"Vibrate on Silent";
    vibrateOnSilent.isTogglable = YES;
    vibrateOnSilent.on = YES;
    
    sectionOne.appSettingSections = [@[vibrateOnRing, vibrateOnSilent]mutableCopy];
    
    
    
    AppSettingSections *sectionTwo = [[AppSettingSections alloc]initWithName:@"Ringer and Alerts"];
    
    AppSetting *ringerSlider = [[AppSetting alloc]init];
    ringerSlider.value = 0;
    
    AppSetting *changeWithButtons = [[AppSetting alloc]init];
    changeWithButtons.name = @"Change with Buttons";
    changeWithButtons.isTogglable = YES;
    changeWithButtons.on = YES;
    
    sectionTwo.appSettingSections = [@[ringerSlider, changeWithButtons]mutableCopy];
    
    
    
    AppSettingSections *sectionThree = [[AppSettingSections alloc]initWithName:@"Sounds and Vibration Patterns"];
    
    AppSetting *ringTone = [[AppSetting alloc]init];
    ringTone.name = @"Ringtone";
    ringTone.details = @"Trill";
    
    AppSetting *textTone = [[AppSetting alloc]init];
    textTone.name = @"Text Tone";
    textTone.details = @"Glass";
    
    AppSetting *newVoicemail = [[AppSetting alloc]init];
    newVoicemail.name = @"New Voicemail";
    newVoicemail.details = @"Tri-tone";
    
    sectionThree.appSettingSections = [@[ringTone, textTone, newVoicemail]mutableCopy];
    
    self.appSections = [@[sectionOne, sectionTwo, sectionThree]mutableCopy];
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.appSections count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    AppSettingSections *placeholderSection = self.appSections[section];
    return [placeholderSection.appSettingSections count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSUInteger cellSection = indexPath.section;
    NSUInteger cellRow = indexPath.row;
    
    AppSettingSections *placeholderSection = self.appSections[cellSection];
    AppSetting *protoCell = placeholderSection.appSettingSections[cellRow];
    
    if (protoCell.isTogglable){
        ToggleableSettingsTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"toggleCells" forIndexPath:indexPath];
        
        cell.settingNameLabel.text = protoCell.name;
        cell.onOffSwitch.on = protoCell.isOn;
        
        return cell;
    }
    
    else if (protoCell.details != nil){
        SelectOptionTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"optionsCells" forIndexPath:indexPath];
        
        cell.nameLabel.text = protoCell.name;
        cell.detailNameLabel.text = protoCell.details;
        
        return cell;
    }
    
    else {
        SliderSettingsTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"sliderCells" forIndexPath:indexPath];
        
        cell.slider.value = protoCell.value;
        
        return cell;
    }
    // Reuse ID's are "toggleCells" "sliderCells" "optionsCells"
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    AppSettingSections *placeholderSection = self.appSections[section];
    
    NSString *title = placeholderSection.sectionName;
    
    return title;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 1){
        NSString *title = @"The volume of the ringer and alerts can be adjusted using the volume buttons.";
        
        return title;
    }
    return nil;
}

@end
