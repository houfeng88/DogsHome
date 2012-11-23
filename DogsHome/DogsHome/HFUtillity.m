//
//  HFUtillity.m
//  DogsHome
//
//  Created by houfeng on 12-11-18.
//  Copyright (c) 2012年 houfeng. All rights reserved.
//

#import "HFUtillity.h"

@implementation HFUtillity

+(NSString *)getDocumentDirectory
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    return   [paths objectAtIndex:0];
}
+(NSString *)getTempDirectory
{
    return    NSTemporaryDirectory();
}
+(NSString *)getBundleDirecory
{
    return [[NSBundle mainBundle] bundlePath];
}

@end
