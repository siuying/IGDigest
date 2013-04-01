//
//  NSString+SHA1Digest.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+SHA1Digest.h"
#import "NSData+SHA1Digest.h"

@implementation NSString (SHA1Digest)

+(NSData *)SHA1Digest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA1Digest];
}

-(NSData *)SHA1DigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA1Digest];
}

-(NSData *)SHA1Digest {
    return [self SHA1DigestWithEncoding:NSUTF8StringEncoding];
}

+(NSString *)SHA1HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA1HexDigest];
}

-(NSString *)SHA1HexDigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA1HexDigest];
}

-(NSString *)SHA1HexDigest {
    return [self SHA1HexDigestWithEncoding:NSUTF8StringEncoding];
}

@end
