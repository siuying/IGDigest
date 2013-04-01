//
//  NSString+SHA1HMAC.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+SHA1HMAC.h"
#import "IGHMAC.h"

@implementation NSString (SHA1HMAC)

-(NSString *)SHA1HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding {
    return [IGHMAC HMACWithMessage:self
                               key:key
                          encoding:encoding
                         algorithm:kCCHmacAlgSHA1
                      digestLength:CC_SHA1_DIGEST_LENGTH];
}

-(NSString *)SHA1HMACWithKey:(NSString*)key {
    return [self SHA1HMACWithKey:key
                          encoding:NSUTF8StringEncoding];
}

@end
