//
//  userInfo.m
//  myWhitePonyWeather
//
//  Created by 莫玄 on 2021/4/18.
//

#import "userInfo.h"

@implementation userInfo
+(instancetype)sharedUserInfo
{
    static dispatch_once_t once;
    static userInfo *userlocation=nil;
    dispatch_once(&once, ^{
        userlocation=[[self alloc]init];
    });
    return userlocation;
}
-(void)updateFromDic:(NSDictionary *)dic
{
    _address=[dic objectForKey:@"address"];
    _latitude=[dic objectForKey:@"latitude"];
    _longitude=[dic objectForKey:@"longitude"];
}
@end
