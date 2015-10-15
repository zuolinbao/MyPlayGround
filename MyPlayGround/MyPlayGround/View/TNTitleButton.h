//
//  TNTitleButton.h
//  11111
//
//  Created by grey on 15/10/15.
//  Copyright © 2015年 grey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TNTitleButton : UIButton

+ (instancetype)buttonWithTitle:(NSString*)title EdgeInsets:(UIEdgeInsets)edgeInsets;
- (instancetype)initWithTitle:(NSString*)title EdgeInsets:(UIEdgeInsets)edgeInsets;
@end
