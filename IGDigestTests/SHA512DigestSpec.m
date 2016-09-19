#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta.h"

#import "NSString+SHA512Digest.h"

SpecBegin(SHA512DigestSpec)

describe(@"SHA512Digest", ^{
    __block NSString* source;
    __block NSString* digest;
    
    it(@"should return the correct digest", ^{
        source = @"hello world";
        digest = @"309ecc489c12d6eb4cc40f50c902f2b4d0ed77ee511a7c7a9bcd3ca86d4cd86f989dd35bc5ff499670da34255b45b0cfd830e81f605dcf7dc5542e93ae9cd76f";
        expect([source SHA512HexDigest]).to.equal(digest);
        
        source = @"アップル";
        digest = @"c20586badc313340ced37f3af8263e27156a44df842168730a9c693a515d1fb7d8f2bfd77eb82d55e39fd72aed41e55aaa4f08b09e70d96633aa2ca7b97caa38";
        expect([source SHA512HexDigest]).to.equal(digest);
    });
});

SpecEnd
