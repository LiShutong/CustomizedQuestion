//
//  AnswerButton.m
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import "AnswerButton.h"

@implementation AnswerButton
#define ScreenWidth UIScreen.mainScreen.bounds.size.width

- (void)initUI {
    _image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    _image.frame = CGRectMake(15, 15, 32, 32);
    [self addSubview:_image];

    _answerLabel = [[UILabel alloc] initWithFrame:CGRectMake(60, 15, ScreenWidth, 32)];
    [_answerLabel setFont:[UIFont systemFontOfSize:13]];
    [self addSubview:_answerLabel];
}

@end
