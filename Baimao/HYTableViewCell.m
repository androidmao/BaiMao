//
//  HYTableViewCell.m
//  Baimao
//
//  Created by GOKIT on 2017/10/15.
//  Copyright © 2017年 GOKIT. All rights reserved.
//

#import "HYTableViewCell.h"

@implementation HYTableViewCell

- (UIImageView *)avatarImageView{
    if (!_avatarImageView) {
        _avatarImageView = [[UIImageView alloc]init];
        [_avatarImageView setBackgroundColor:[UIColor redColor]];
        [_avatarImageView.layer setMasksToBounds:YES];
        [_avatarImageView.layer setCornerRadius:20];
    }
    return _avatarImageView;
}

- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]init];
        [_contentLabel setNumberOfLines:0];
        [_contentLabel setFont:[UIFont systemFontOfSize:15.0]];
        [_contentLabel setBackgroundColor:[UIColor greenColor]];
    }
    return _contentLabel;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    [self.contentView addSubview:self.avatarImageView];
    [self.contentView addSubview:self.contentLabel];


    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
