//
//  NSString+SHA512HMAC.m
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import "NSString+SHA512HMAC.h"
#import "IGHMAC.h"
#include <CommonCrypto/CommonHMAC.h>

@implementation NSString (SHA512HMAC)

-(NSString *)SHA512HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding {
    return [IGHMAC HMACWithMessage:self
                               key:key
                          encoding:encoding
                         algorithm:kCCHmacAlgSHA512
                      digestLength:CC_SHA512_DIGEST_LENGTH];
}

-(NSString *)SHA512HMACWithKey:(NSString*)key {
    return [self SHA512HMACWithKey:key
                          encoding:NSUTF8StringEncoding];
}

@end
