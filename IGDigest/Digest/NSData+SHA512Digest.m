//
//  NSData+SHA512Digest.m
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import "NSData+SHA512Digest.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSData (SHA512Digest)

+(NSData *)SHA512Digest:(NSData *)input {
    unsigned char result[CC_SHA512_DIGEST_LENGTH];
    
    if (CC_SHA512(input.bytes, (CC_LONG)input.length, result)) {
        return [[NSData alloc] initWithBytes:result length:CC_SHA512_DIGEST_LENGTH];
    } else {
        return nil;
    }
}

-(NSData *)SHA512Digest {
    return [NSData SHA512Digest:self];
}

+(NSString *)SHA512HexDigest:(NSData *)input {
    unsigned char result[CC_SHA512_DIGEST_LENGTH];
    
    if (CC_SHA512(input.bytes, (CC_LONG)input.length, result)) {
        NSMutableString *ret = [NSMutableString stringWithCapacity:CC_SHA512_DIGEST_LENGTH*2];
        for (int i = 0; i<CC_SHA512_DIGEST_LENGTH; i++) {
            [ret appendFormat:@"%02x",result[i]];
        }
        return ret;
    } else {
        return nil;
    }
}

-(NSString *)SHA512HexDigest {
    return [NSData SHA512HexDigest:self];
}

@end
