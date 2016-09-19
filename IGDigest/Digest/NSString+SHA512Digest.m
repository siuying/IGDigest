//
//  NSString+SHA512Digest.m
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import "NSString+SHA512Digest.h"
#import "NSData+SHA512Digest.h"

@implementation NSString (SHA512Digest)

+(NSData *)SHA512Digest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA512Digest];
}

-(NSData *)SHA512DigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA512Digest];
}

-(NSData *)SHA512Digest {
    return [self SHA512DigestWithEncoding:NSUTF8StringEncoding];
}

+(NSString *)SHA512HexDigest:(NSString *)input encoding:(NSStringEncoding)encoding {
    NSData* data = [input dataUsingEncoding:encoding];
    return [data SHA512HexDigest];
}

-(NSString *)SHA512HexDigestWithEncoding:(NSStringEncoding)encoding {
    NSData* data = [self dataUsingEncoding:encoding];
    return [data SHA512HexDigest];
}

-(NSString *)SHA512HexDigest {
    return [self SHA512HexDigestWithEncoding:NSUTF8StringEncoding];
}

@end
