//
//  IGHMAC.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <CommonCrypto/CommonDigest.h>
#include <CommonCrypto/CommonHMAC.h>

@interface IGHMAC : NSObject

+(NSString *)HMACWithMessage:(NSString*)message key:(NSString*)key encoding:(NSStringEncoding)encoding algorithm:(CCHmacAlgorithm)algorithm digestLength:(NSInteger)digestLength;

@end
