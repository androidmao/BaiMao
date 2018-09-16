//
//  HYChatTableViewCell.h
//  Baimao
//
//  Created by GOKIT on 2018/9/16.
//  Copyright © 2018年 GOKIT. All rights reserved.
//

#import <UIKit/UIKit.h>

static NSString *const KHYChatTableViewCell = @"HYChatTableViewCell";

@interface HYChatTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *chatContentLabel;

@end
