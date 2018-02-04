//
//  AnswerButton.h
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnswerButton : UIButton

@property (nonatomic, strong) UIImageView *image;
@property (nonatomic, strong) UILabel *answerLabel;
- (void)initUI;

@end
