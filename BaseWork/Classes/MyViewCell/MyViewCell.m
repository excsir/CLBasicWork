//
//  MyViewCell.m
//  YouFind
//
//  Created by chao on 2019/7/20.
//  Copyright © 2019 excsir. All rights reserved.
//

#import "MyViewCell.h"
#import <Masonry.h>

@implementation MyViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self makeUI];
    }
    return self;
}

- (void)makeUI
{
    [self.contentView addSubview:self.iconView];
    [self.contentView addSubview:self.iconLabel];
    [self.contentView addSubview:self.titleLabel];
    
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.centerY.equalTo(self.contentView);
        make.width.height.equalTo(@40);
    }];
    [self.iconLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.centerY.equalTo(self.contentView);
        make.width.height.equalTo(@40);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconView.mas_right).offset(10);
        make.centerY.equalTo(self.contentView);
    }];
}

#pragma mark - getter and setter
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:18];
        _titleLabel.textColor = UIColor.darkTextColor;
    }
    return _titleLabel;
}
- (UILabel *)iconLabel {
    if (!_iconLabel) {
        _iconLabel = [[UILabel alloc] init];
        _iconLabel.font = [UIFont fontWithName:@"icomoon" size:20];
        _iconLabel.textAlignment = NSTextAlignmentCenter;
        _iconLabel.layer.cornerRadius = 20;
        _iconLabel.clipsToBounds = YES;
    }
    return _iconLabel;
}
- (UIImageView *)iconView {
    if (!_iconView) {
        _iconView = [[UIImageView alloc] init];
    }
    return _iconView;
}
@end
