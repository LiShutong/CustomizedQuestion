//
//  QuestionModel.m
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import "QuestionModel.h"

@implementation QuestionModel

+ (NSArray *)initArrayWithDicArray:(NSArray *)array {
    NSMutableArray *modelArray = [[NSMutableArray alloc] init];
    for (NSDictionary *dic in array) {
        QuestionModel *model = [[QuestionModel alloc] init];
        model.question = dic[@"question"];
        model.answerArray = dic[@"answerArray"];
        [modelArray addObject:model];
    }
    return modelArray;
}
@end
