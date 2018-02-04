//
//  QuestionModel.h
//  Customized
//
//  Created by 吴柳燕 on 2018/1/30.
//  Copyright © 2018年 吴柳燕. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionModel : NSObject

@property (nonatomic, copy) NSString *question;
@property (nonatomic, copy) NSArray *answerArray;

+ (NSArray *)initArrayWithDicArray:(NSArray *)array;

@end
