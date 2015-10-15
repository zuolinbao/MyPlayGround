//
//  TNTitleButton.m
//  11111
//
//  Created by grey on 15/10/15.
//  Copyright © 2015年 grey. All rights reserved.
//

#import "TNTitleButton.h"


@implementation TNTitleButton

+ (instancetype)buttonWithTitle:(NSString*)title EdgeInsets:(UIEdgeInsets)edgeInsets{
    return [[self alloc] initWithTitle:title EdgeInsets:edgeInsets];
}

- (instancetype)initWithTitle:(NSString*)title EdgeInsets:(UIEdgeInsets)edgeInsets{
    if (self = [super init]) {
        [self setTitle:title forState:UIControlStateNormal];
        NSDictionary *attributes = @{NSFontAttributeName:self.titleLabel.font};
        CGSize titleSize = [title sizeWithAttributes:attributes];
        self.frame = CGRectMake(self.x, self.y, titleSize.width+ edgeInsets.left+edgeInsets.right, titleSize.height+edgeInsets.top+edgeInsets.bottom);
    }
    return self;
}

- (void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
