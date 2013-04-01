//
//  NSString+MD5Digest.m
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import "NSString+MD5Digest.h"
#import "NSData+MD5Digest.h"

@implementation NSString (MD5Digest)

+(NSData *)MD5Digest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data MD5Digest];
}

-(NSData *)MD5DigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data MD5Digest];
}

-(NSData *)MD5Digest {
    return [self MD5DigestWithEncoding:NSUTF8StringEncoding];
}

+(NSString *)MD5HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data MD5HexDigest];
}

-(NSString *)MD5HexDigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data MD5HexDigest];
}

-(NSString *)MD5HexDigest {
    return [self MD5HexDigestWithEncoding:NSUTF8StringEncoding];
}

@end
