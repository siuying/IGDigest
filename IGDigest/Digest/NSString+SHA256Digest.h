//
//  NSString+SHA256Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA256Digest)

+(NSData *)SHA256Digest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSData *)SHA256DigestWithEncoding:(NSStringEncoding)encoding;
-(NSData *)SHA256Digest;

+(NSString *)SHA256HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSString *)SHA256HexDigestWithEncoding:(NSStringEncoding)encoding;
-(NSString *)SHA256HexDigest;

@end
