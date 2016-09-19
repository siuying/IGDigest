//
//  NSData+SHA512Digest.h
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (SHA512Digest)

+(NSData *)SHA512Digest:(NSData *)input;
-(NSData *)SHA512Digest;

+(NSString *)SHA512HexDigest:(NSData *)input;
-(NSString *)SHA512HexDigest;

@end
