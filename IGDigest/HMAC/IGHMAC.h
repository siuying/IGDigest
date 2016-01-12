//
//  IGHMAC.h
//  IGDigest
//
//  Created by Chong Francis on 13年4月1日.
//  Copyright (c) 2013年 Ignition Soft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IGHMAC : NSObject

+(NSString *)HMACWithMessage:(NSString*)message
                         key:(NSString*)key
                    encoding:(NSStringEncoding)encoding
                   algorithm:(uint32_t)algorithm
                digestLength:(NSInteger)digestLength;

@end
