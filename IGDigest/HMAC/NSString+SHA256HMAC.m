//
//  NSString+HMAC_SHA256.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+SHA256HMAC.h"
#import "IGHMAC.h"

@implementation NSString (SHA256HMAC)

-(NSString *)SHA256HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding {
    return [IGHMAC HMACWithMessage:self
                               key:key
                          encoding:encoding
                         algorithm:kCCHmacAlgSHA256
                      digestLength:CC_SHA256_DIGEST_LENGTH];
}

-(NSString *)SHA256HMACWithKey:(NSString*)key {
    return [self SHA256HMACWithKey:key
                          encoding:NSUTF8StringEncoding];
}

@end
