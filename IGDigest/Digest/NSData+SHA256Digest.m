//
//  NSData+SHA256Digest.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSData+SHA256Digest.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (SHA256Digest)

+(NSData *)SHA256Digest:(NSData *)input {
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    
    if (CC_SHA256(input.bytes, (CC_LONG)input.length, result)) {
        return [[NSData alloc] initWithBytes:result length:CC_SHA256_DIGEST_LENGTH];
    } else {
        return nil;
    }
}

-(NSData *)SHA256Digest {
    return [NSData SHA256Digest:self];
}

+(NSString *)SHA256HexDigest:(NSData *)input {
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    
    if (CC_SHA256(input.bytes, (CC_LONG)input.length, result)) {
        NSMutableString *ret = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH*2];
        for (int i = 0; i<CC_SHA256_DIGEST_LENGTH; i++) {
            [ret appendFormat:@"%02x",result[i]];
        }
        return ret;
    } else {
        return nil;
    }
}

-(NSString *)SHA256HexDigest {
    return [NSData SHA256HexDigest:self];
}

@end
