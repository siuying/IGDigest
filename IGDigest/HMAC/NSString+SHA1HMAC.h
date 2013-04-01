//
//  NSString+SHA1HMAC.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHA1HMAC)

-(NSString *)SHA1HMACWithKey:(NSString*)key encoding:(NSStringEncoding)encoding;
-(NSString *)SHA1HMACWithKey:(NSString*)key;

@end
