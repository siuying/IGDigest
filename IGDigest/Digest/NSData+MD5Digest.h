//
//  NSData+MD5Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (MD5Digest)

+(NSData *)MD5Digest:(NSData *)input;
-(NSData *)MD5Digest;

+(NSString *)MD5HexDigest:(NSData *)input;
-(NSString *)MD5HexDigest;

@end