#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+SHA256HMAC.h"

SpecBegin(SHA256HMACSpec)

describe(@"SHA256HMAC", ^{
    __block NSString* key;
    __block NSString* message;
    __block NSString* signature;
    
    it(@"should return the correct digest", ^{
        key = @"";
        message = @"";
        signature = @"b613679a0814d9ec772f95d778c35fc5ff1697c493715653c6c712144292c5ad";
        expect([message SHA256HMACWithKey:key]).to.equal(signature);

        key = @"key";
        message = @"The quick brown fox jumps over the lazy dog";
        signature = @"f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8";
        expect([message SHA256HMACWithKey:key]).to.equal(signature);
    });

});

SpecEnd
