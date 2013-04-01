//
//  NSString+MD5Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5Digest)

+(NSData *)MD5Digest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSData *)MD5DigestWithEncoding:(NSStringEncoding)encoding;
-(NSData *)MD5Digest;

+(NSString *)MD5HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSString *)MD5HexDigestWithEncoding:(NSStringEncoding)encoding;
-(NSString *)MD5HexDigest;

@end
