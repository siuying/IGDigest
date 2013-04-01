//
//  NSData+SHA256Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (SHA256Digest)

+(NSData *)SHA256Digest:(NSData *)input;
-(NSData *)SHA256Digest;

+(NSString *)SHA256HexDigest:(NSData *)input;
-(NSString *)SHA256HexDigest;

@end
