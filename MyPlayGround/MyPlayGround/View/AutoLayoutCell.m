//
//  AutoLayoutCell.m
//  MyPlayGround
//
//  Created by lin on 15/11/18.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "AutoLayoutCell.h"
#import "AutoModel.h"
@interface AutoLayoutCell()
@property(nonatomic,strong)UILabel *mainLabel;
@property(nonatomic,strong)UILabel *contentLabel;
@end


@implementation AutoLayoutCell

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super initWithCoder:aDecoder]) {
        [self uiInit];
    };
    return self;
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self uiInit];
        
    }
    return self;
}

//- (void)awakeFromNib{
//    [self uiInit];
//}

- (void)uiInit{
    _mainLabel = [UILabel new];
    _mainLabel.backgroundColor = [UIColor blueColor];
    _mainLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 20;
    _mainLabel.numberOfLines = 0;
    _mainLabel.textColor = [UIColor redColor];
    [_mainLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.contentView addSubview:_mainLabel];
    [_mainLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.contentView).offset(10.0f);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(50);
    }];
    
    
    
    _contentLabel = [UILabel new];
    _contentLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 20;
    _contentLabel.backgroundColor = [UIColor yellowColor];
    _contentLabel.numberOfLines = 0;
    _contentLabel.textColor = [UIColor redColor];
    [_contentLabel setContentHuggingPriority:UILayoutPriorityRequired forAxis:UILayoutConstraintAxisVertical];
    [self.contentView addSubview:_contentLabel];
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(_mainLabel).offset(10.0f);
        make.width.mas_equalTo(SCREEN_WIDTH);
        make.height.mas_equalTo(50);
    }];
    
}

- (void)setTitle:(NSString *)title content:(NSString *)content{
    _mainLabel.text = title;
    _contentLabel.text = content;
}

- (void)setModel:(AutoModel *)model{
    _mainLabel.text = model.title;
    _contentLabel.text= model.content;
}


@end
