//
//  WSYAlertCollectionCell.m
//  WSYPickerProject
//
//  Created by zjlk32 on 2021/10/18.
//

#import "WSYAlertCollectionCell.h"
#import <Masonry/Masonry.h>


@interface WSYAlertCollectionCell ()

@property(nonatomic,strong)UILabel  *titleLab;



@end


@implementation WSYAlertCollectionCell


-(UIView *)leftLineV{
    if (!_leftLineV) {
        _leftLineV = [[UIView alloc]init];
        _leftLineV.backgroundColor = [UIColor grayColor];
    }
    return _leftLineV;
}

-(UIView *)rightLineV{
    if (!_rightLineV) {
        _rightLineV = [[UIView alloc]init];
        _rightLineV.backgroundColor = [UIColor grayColor];
    }
    return _rightLineV;
}

-(UILabel *)titleLab{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]init];
        _titleLab.text = @"1231231231";
        _titleLab.font = [UIFont systemFontOfSize:14];
        _titleLab.textColor = [UIColor colorWithRed:50.0f/255.0f green:149.0f/255.0f blue:250.0f/255.0f alpha:1.0];
        _titleLab.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLab;
}

-(void)setContentUI{
    [self.contentView addSubview:self.leftLineV];
    [self.contentView addSubview:self.rightLineV];
    [self.contentView addSubview:self.titleLab];
    self.rightLineV.hidden = true;
    self.leftLineV.hidden = true;
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left).offset(0.5);
        make.top.bottom.mas_equalTo(self.contentView);
        make.right.mas_equalTo(self.contentView.mas_right).offset(-0.5);
    }];
    [self.leftLineV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.contentView.mas_left);
        make.top.bottom.mas_equalTo(self.contentView);
        make.width.equalTo(@(0.5));
    }];
    [self.rightLineV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.contentView.mas_right);
        make.top.bottom.mas_equalTo(self.contentView);
        make.width.equalTo(@(0.5));
    }];
    
}

-(void)setCellAction:(LKAlertAction *)cellAction{
    _cellAction = cellAction;
    if (_cellAction) {
        self.titleLab.text = _cellAction.tittle;
        self.titleLab.textColor = _cellAction.titleColor;
        self.titleLab.font = _cellAction.titleFont;
    }
}

@end
