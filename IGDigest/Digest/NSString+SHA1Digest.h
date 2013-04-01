//
//  NSString+SHA1Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA1Digest)

+(NSData *)SHA1Digest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSData *)SHA1DigestWithEncoding:(NSStringEncoding)encoding;
-(NSData *)SHA1Digest;

+(NSString *)SHA1HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSString *)SHA1HexDigestWithEncoding:(NSStringEncoding)encoding;
-(NSString *)SHA1HexDigest;

@end
