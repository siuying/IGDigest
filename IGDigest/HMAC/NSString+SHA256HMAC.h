//
//  NSString+HMAC_SHA256.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA256HMAC)

-(NSString *)SHA256HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding;
-(NSString *)SHA256HMACWithKey:(NSString*)key;

@end
