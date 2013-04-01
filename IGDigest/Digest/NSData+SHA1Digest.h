//
//  NSData+SHA1Digest.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (SHA1Digest)

+(NSData *)SHA1Digest:(NSData *)input;
-(NSData *)SHA1Digest;

+(NSString *)SHA1HexDigest:(NSData *)input;
-(NSString *)SHA1HexDigest;

@end
