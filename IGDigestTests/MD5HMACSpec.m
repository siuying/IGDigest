#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+MD5HMAC.h"

SpecBegin(MD5HMACSpec)

describe(@"MD5HMAC", ^{
    __block NSString* key;
    __block NSString* message;
    __block NSString* signature;
    
    it(@"should return the correct digest", ^{
        key = @"";
        message = @"";
        signature = @"74e6f7298a9c2d168935f58c001bad88";
        expect([message MD5HMACWithKey:key]).to.equal(signature);
        
        key = @"key";
        message = @"The quick brown fox jumps over the lazy dog";
        signature = @"80070713463e7749b90c2dc24911e275";
        expect([message MD5HMACWithKey:key]).to.equal(signature);
    });
    
});

SpecEnd
