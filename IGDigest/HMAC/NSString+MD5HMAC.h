//
//  NSString+MD5HMAC.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5HMAC)

-(NSString *)MD5HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding;
-(NSString *)MD5HMACWithKey:(NSString*)key;

@end
