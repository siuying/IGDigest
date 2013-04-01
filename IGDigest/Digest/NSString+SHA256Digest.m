//
//  NSString+SHA256Digest.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+SHA256Digest.h"
#import "NSData+SHA256Digest.h"

@implementation NSString (SHA256Digest)

+(NSData *)SHA256Digest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA256Digest];
}

-(NSData *)SHA256DigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA256Digest];
}

-(NSData *)SHA256Digest {
    return [self SHA256DigestWithEncoding:NSUTF8StringEncoding];
}

+(NSString *)SHA256HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA256HexDigest];
}

-(NSString *)SHA256HexDigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA256HexDigest];
}

-(NSString *)SHA256HexDigest {
    return [self SHA256HexDigestWithEncoding:NSUTF8StringEncoding];
}

@end
