#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+SHA256Digest.h"

SpecBegin(SHA256DigestSpec)

describe(@"SHA256Digest", ^{
    __block NSString* source;
    __block NSString* digest;
    
    it(@"should return the correct digest", ^{
        source = @"hello world";
        digest = @"b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9";
        expect([source SHA256HexDigest]).to.equal(digest);
        
        source = @"アップル";
        digest = @"40e99006d8e6d0cb7de602fc67a676d013dd78d2a40960330e756067f8b184fa";
        expect([source SHA256HexDigest]).to.equal(digest);
    });
});

SpecEnd
