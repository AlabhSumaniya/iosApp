//
//  SearchTableViewCell.m
//  bkgApp
//
//  Created by ADMINISTRATOR on 19/09/17.
//  Copyright © 2017 Appddiction. All rights reserved.
//

#import "SearchTableViewCell.h"

@implementation SearchTableViewCell








@synthesize HeaderText=_HeaderText;
@synthesize HeaderSubText =_HeaderSubText;
@synthesize TimeQueue1=_TimeQueue1;
@synthesize TimeQueue2=_TimeQueue2;
@synthesize TimeQueue3=_TimeQueue3;
@synthesize TimeQueue4=_TimeQueue4;
@synthesize FeesLabel=_FeesLabel;
@synthesize GeneralButton=_GeneralButton;
@synthesize FavButton=_FavButton;





- (void)awakeFromNib
{
    [super awakeFromNib];
    
    _GeneralButton.layer.cornerRadius=_GeneralButton.layer.frame.size.width/5;
    _GeneralButton.layer.borderWidth=1.0f;
    _GeneralButton.layer.borderColor=[UIColor darkGrayColor].CGColor;
    
    
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
