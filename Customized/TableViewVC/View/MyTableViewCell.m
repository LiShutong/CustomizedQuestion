//
//  MyTableViewCell.m
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import "MyTableViewCell.h"
#import "AnswerButton.h"
#define ScreenHeight UIScreen.mainScreen.bounds.size.height
#define ScreenWidth UIScreen.mainScreen.bounds.size.width

@implementation MyTableViewCell {
    NSMutableArray *btnArray;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if ([super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.questionLabel];

    }
    return self;
}
- (UILabel *)questionLabel {
    if (!_questionLabel) {
        _questionLabel = [[UILabel alloc]init];
        _questionLabel.backgroundColor = [UIColor whiteColor];
        _questionLabel.frame = CGRectMake(10, 2, ScreenWidth, 50);
        _questionLabel.numberOfLines = 0;
        [_questionLabel setFont: [UIFont systemFontOfSize:15]];
        _questionLabel.lineBreakMode = NSLineBreakByWordWrapping;
    }
    return _questionLabel;
}
- (void)initAnswerView {
    int num = 1;
    btnArray = [[NSMutableArray alloc] init];
    for (NSString *str in self.answerArray) {
        [self initAnswerCellWithString:str WithIndex:num];
        num ++;
    }
}

- (void)initAnswerCellWithString:(NSString *)str WithIndex:(int)num {
    AnswerButton *answerBtn = [[AnswerButton alloc] init];
    answerBtn.frame = CGRectMake(0, 50 * num, ScreenWidth, 50);
    [answerBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [answerBtn initUI];

    answerBtn.answerLabel.text = str;
    answerBtn.backgroundColor = [UIColor colorWithRed:192 green:192 blue:192 alpha:1];
    answerBtn.tag = num;
    [btnArray addObject:answerBtn];
    [self.contentView addSubview:answerBtn];
}
- (void)btnClick:(AnswerButton *)sender {
    for (AnswerButton *btn in btnArray) {
        btn.image.image = [UIImage imageNamed:@"1"];
    }
    AnswerButton *btn = [[AnswerButton alloc] init];
    btn = sender;
    btn.image.image = [UIImage imageNamed:@"2"];
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
