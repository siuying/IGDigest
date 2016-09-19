//
//  NSString+SHA512Digest.h
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA512Digest)

+(NSData *)SHA512Digest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSData *)SHA512DigestWithEncoding:(NSStringEncoding)encoding;
-(NSData *)SHA512Digest;

+(NSString *)SHA512HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding;
-(NSString *)SHA512HexDigestWithEncoding:(NSStringEncoding)encoding;
-(NSString *)SHA512HexDigest;

@end
