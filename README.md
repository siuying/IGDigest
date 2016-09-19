## IGDigest

Provides convenient wrappers for popular message digest formats (MD5, SHA1 and SHA256) and HMAC (Hash-based message authentication code).

### Examples

#### Using message digest

```
// import the categories
#import "NSString+MD5Digest.h"
#import "NSString+SHA1Digest.h"
#import "NSString+SHA256Digest.h"
#import "NSString+SHA512Digest.h"

// use them
NSString* source = @"hello world";
[source MD5HexDigest];    // => @"5eb63bbbe01eeed093cb22bb8f5acdc3"
[source SHA1HexDigest];   // => @"2aae6c35c94fcfb415dbe95f408b9ce91ee846ed"
[source SHA256HexDigest]; // => @"b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"
[source SHA512HexDigest]; // => @"309ecc489c12d6eb4cc40f50c902f2b4d0ed77ee511a7c7a9bcd3ca86d4cd86f989dd35bc5ff499670da34255b45b0cfd830e81f605dcf7dc5542e93ae9cd76f"

```

#### Using HMAC

```
// import the categories
#import "NSString+MD5HMAC.h"
#import "NSString+SHA1HMAC.h"
#import "NSString+SHA256HMAC.h"
#import "NSString+SHA512HMAC.h"

// use them
NSString* source = @"The quick brown fox jumps over the lazy dog";
NSString* key = @"key";

[source MD5HMACWithKey:key];    // => @"80070713463e7749b90c2dc24911e275"
[source SHA1HMACWithKey:key];   // => @"de7c9b85b8b78aa6bc8a7a36f70a90701c9db4d9"
[source SHA256HMACWithKey:key]; // => @"f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8"
[source SHA512HMACWithKey:key]; // => @"b42af09057bac1e2d41708e48a902e09b5ff7f12ab428a4fe86653c73dd248fb82f948a549f7b791a5b41915ee4d1ec3935357e4e2317250d0372afa2ebeeb3a"

```

### Copyright

Copyright (c) 2013 Francis Chong. This software is licensed under the MIT License. See LICENSE for details.