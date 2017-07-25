//
//  NSDate+FWAddition.m
//
//  Created by ZT0526 on 2017/4/21.
//  Copyright © 2017年 小步创想. All rights reserved.
//

#import "NSDate+FWAddition.h"


@implementation NSDate (FWAddition)



- (NSString *)timeStringUsedToMark
{
    NSDateComponents *dateComponents = [self dateComponents];
    NSString *date = [NSString stringWithFormat:@"%ld-%ld-%ld", (long)dateComponents.year, (long)dateComponents.month, (long)dateComponents.day];
    NSString *time = [NSString stringWithFormat:@"%ld:%02ld", (long)dateComponents.hour, (long)dateComponents.minute];
    return [NSString stringWithFormat:@"%@ %@", date, time];
}

- (NSDateComponents *)dateComponents
{
    NSCalendarUnit calendarUnit =
    NSEraCalendarUnit
    | NSYearCalendarUnit
    | NSMonthCalendarUnit
    | NSDayCalendarUnit
    | NSHourCalendarUnit
    | NSMinuteCalendarUnit
    | NSSecondCalendarUnit
    | NSWeekCalendarUnit
    | NSWeekdayCalendarUnit
    | NSWeekdayOrdinalCalendarUnit
    | NSQuarterCalendarUnit
    | NSWeekOfMonthCalendarUnit
    | NSWeekOfYearCalendarUnit
    | NSYearForWeekOfYearCalendarUnit
    | NSCalendarCalendarUnit
    | NSTimeZoneCalendarUnit;
    return [[NSCalendar currentCalendar] components:calendarUnit fromDate:self];
}


@end
