//
//  NSTextView+ESBExtension.m
//  ESchoolBagLocalServer
//
//  Created by 23 on 2017/3/3.
//  Copyright © 2017年 23. All rights reserved.
//

#import "NSTextView+ESBExtension.h"

@implementation NSTextView (ESBExtension)

- (void)addString:(NSString *)string
{
    NSAttributedString *attrString = [[NSAttributedString alloc]initWithString:string];
    [self.textStorage appendAttributedString:attrString];
}

- (void)addLogText:(NSString *)logStr
{
    NSDate *now = [NSDate new];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd hh:mm:ss";
    NSString *dateStr = [formatter stringFromDate:now];
    
    dateStr = [dateStr stringByAppendingString:@" : "];
    logStr = [dateStr stringByAppendingString:logStr];
    logStr = [logStr stringByAppendingString:@"\n"];
    
    [self addString:logStr];
}

- (void)dieLogWithText:(NSString *)logStr
{
    [self addLogText:logStr];
    [self addLogText:@"程序结束"];
}


@end