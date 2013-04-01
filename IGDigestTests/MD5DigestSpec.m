#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+MD5Digest.h"

SpecBegin(MD5DigestSpec)

describe(@"MD5Digest", ^{
    __block NSString* source;
    __block NSString* digest;

    it(@"should return the correct digest", ^{
        source = @"hello world";
        digest = @"5eb63bbbe01eeed093cb22bb8f5acdc3";
        expect([source MD5HexDigest]).to.equal(digest);

        source = @"アップル";
        digest = @"ff1da4872f9b18193bb398330bfa597a";
        expect([source MD5HexDigest]).to.equal(digest);
    });
});

SpecEnd
