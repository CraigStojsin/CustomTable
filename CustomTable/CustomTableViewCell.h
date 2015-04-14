//
//  CustomTableViewCell.h
//  CustomTable
//
//  Created by Craig Stojsin on 2015-04-14.
//  Copyright (c) 2015 Codes By Craig. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end
