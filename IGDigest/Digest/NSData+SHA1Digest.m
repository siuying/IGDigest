//
//  NSData+SHA1Digest.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSData+SHA1Digest.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (SHA1Digest)

+(NSData *)SHA1Digest:(NSData *)input {
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    
    if (CC_SHA1(input.bytes, (CC_LONG)input.length, result)) {
        return [[NSData alloc] initWithBytes:result length:CC_SHA1_DIGEST_LENGTH];
    } else {
        return nil;
    }
}

-(NSData *)SHA1Digest {
    return [NSData SHA1Digest:self];
}

+(NSString *)SHA1HexDigest:(NSData *)input {
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    
    if (CC_SHA1(input.bytes, (CC_LONG)input.length, result)) {
        NSMutableString *ret = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH*2];
        for (int i = 0; i<CC_SHA1_DIGEST_LENGTH; i++) {
            [ret appendFormat:@"%02x",result[i]];
        }
        return ret;
    } else {
        return nil;
    }
}

-(NSString *)SHA1HexDigest {
    return [NSData SHA1HexDigest:self];
}

@end
