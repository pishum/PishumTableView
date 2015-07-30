//
//  SimpleTableViewCell.h
//  PishumTableView
//
//  Created by Pishum on 15/7/29.
//  Copyright (c) 2015年 Pishum. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *describe;
@property (strong, nonatomic) IBOutlet UIImageView *icon;


@end
