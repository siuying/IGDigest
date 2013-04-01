#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+SHA1Digest.h"

SpecBegin(SHA1DigestSpec)

describe(@"SHA1Digest", ^{
    __block NSString* source;
    __block NSString* digest;
    
    it(@"should return the correct digest", ^{
        source = @"hello world";
        digest = @"2aae6c35c94fcfb415dbe95f408b9ce91ee846ed";
        expect([source SHA1HexDigest]).to.equal(digest);
        
        source = @"アップル";
        digest = @"9a43774ad56e464002d0a70224a831d3d56ba3a4";
        expect([source SHA1HexDigest]).to.equal(digest);
    });
});

SpecEnd
