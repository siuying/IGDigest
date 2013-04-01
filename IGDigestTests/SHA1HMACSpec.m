#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+SHA1HMAC.h"

SpecBegin(SHA1HMACSpec)

describe(@"SHA1HMAC", ^{
    __block NSString* key;
    __block NSString* message;
    __block NSString* signature;
    
    it(@"should return the correct digest", ^{
        key = @"";
        message = @"";
        signature = @"fbdb1d1b18aa6c08324b7d64b71fb76370690e1d";
        expect([message SHA1HMACWithKey:key]).to.equal(signature);
        
        key = @"key";
        message = @"The quick brown fox jumps over the lazy dog";
        signature = @"de7c9b85b8b78aa6bc8a7a36f70a90701c9db4d9";
        expect([message SHA1HMACWithKey:key]).to.equal(signature);
    });
    
});

SpecEnd
