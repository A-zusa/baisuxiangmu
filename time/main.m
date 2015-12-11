//
//  main.m
//  time
//
//  Created by 杜超凡 on 15/12/10.
//  Copyright © 2015年 杜超凡. All rights reserved.
//

#import <Foundation/Foundation.h>

void test(){

    //日期对象
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:342342342];
    //日期格式化类
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    //设置类型
    matter.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    //转换
    NSString *string = [matter stringFromDate:date];
    
    NSLog(@"%@", string);
    
    
}

void dateCompare(){

    NSString *createdAt = @"2015-12-10 10:10:01";
    
    
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    
    matter.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    
    NSDate *date = [matter dateFromString:createdAt];
    
    NSDate *now= [NSDate date];
    
    NSComparisonResult result = [now compare:date];
    
    if (result == NSOrderedSame) {
        
        
    }else if(result == NSOrderedAscending){
        NSLog(@"date> now");
    
    }else if (result == NSOrderedDescending){
    
    
    }
    
    
}

void dateinterval(){

    NSString *createAt = @"2015-12-08 22:10:01";
    
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    
    matter.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    
    NSDate *date = [matter dateFromString:createAt];
    
    NSDate *now = [NSDate date];
    
    NSTimeInterval interval = [now timeIntervalSinceDate:date];
    
    
    int kon_interval = (int)interval;
    
}


void dateInterval(){
    
    NSString *string = @"2015-12-08 22:10:01";
    
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    
    matter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    NSDate *date = [matter dateFromString:string];
    
    NSDate *now = [NSDate date];
    
    
}

//获取日期的某个元素
void dComponent(){

    NSString *string = @"2015-12-08 22:10:01";
    
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    
    matter.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    
    NSDate *date = [matter dateFromString:string];
    NSDate *now = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSInteger year = [calendar component:NSCalendarUnitYear fromDate:date];
    NSInteger month = [calendar component:NSCalendarUnitMonth fromDate:date];
    
    NSLog(@"%zd--%zd", year, month);
    
}


void dateComponent(){

    NSDate *date = [NSDate date];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
    | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *components = [calendar components:unit fromDate:date];
    
    NSLog(@"%@", components);
}

void calendarWarning(){

    NSCalendar *calendar = nil;
    
    if ([calendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        
        calendar = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    }else{
        calendar = [NSCalendar currentCalendar];
        
    }

    
}

/**
 *  使用NSCalendar获得NSDate之间的时间间隔
 */
void interval(){
    
    NSDateFormatter *matter = [[NSDateFormatter alloc] init];
    
    matter.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    
    NSDate *date = [matter dateFromString:@"2015-12-08 22:10:01"];
    NSDate *date1 = [matter dateFromString:@"2013-1-08 12:10:01"];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay
    | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *components = [calendar components:unit fromDate:date1 toDate:date options:0];
    
    NSLog(@"%@", components);
    
    NSLog(@"--%@", )
    
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        dateComponent();
        
    }
    
    
    
    return 0;
}


