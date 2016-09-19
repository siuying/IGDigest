//
//  NSString+SHA512HMAC.h
//  IGDigest
//
//  Created by Cedrick Gout on 19/09/16.
//  Copyright © 2016 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA512HMAC)

-(NSString *)SHA512HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding;
-(NSString *)SHA512HMACWithKey:(NSString*)key;

@end
