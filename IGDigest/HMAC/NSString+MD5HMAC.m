//
//  NSString+MD5HMAC.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+MD5HMAC.h"
#import "IGHMAC.h"

@implementation NSString (MD5HMAC)

-(NSString *)MD5HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding {
    return [IGHMAC HMACWithMessage:self
                               key:key
                          encoding:encoding
                         algorithm:kCCHmacAlgMD5
                      digestLength:CC_MD5_DIGEST_LENGTH];
}

-(NSString *)MD5HMACWithKey:(NSString*)key {
    return [self MD5HMACWithKey:key
                        encoding:NSUTF8StringEncoding];
}

@end
