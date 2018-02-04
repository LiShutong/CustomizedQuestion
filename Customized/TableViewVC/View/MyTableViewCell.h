//
//  MyTableViewCell.h
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ScreenHeight UIScreen.mainScreen.bounds.size.height
#define ScreenWidth UIScreen.mainScreen.bounds.size.width

@interface MyTableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *questionLabel;
@property (nonatomic, copy) NSArray *answerArray;

- (void)initAnswerView;

@end
