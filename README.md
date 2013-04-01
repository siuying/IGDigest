## IGDigest

Provides convenient wrappers for popular message digest formats (MD5, SHA1 and SHA256).

### Examples

```

// import the categories
#import "NSString+MD5Digest.h"
#import "NSString+SHA1Digest.h"
#import "NSString+SHA256Digest.h"

// use them
NSString* source = @"hello world";
[source MD5HexDigest];    // => @"5eb63bbbe01eeed093cb22bb8f5acdc3"
[source SHA1HexDigest];   // => @"2aae6c35c94fcfb415dbe95f408b9ce91ee846ed"
[source SHA256HexDigest]; // => @"b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"

```

### Copyright

Copyright (c) 2013 Francis Chong. This software is licensed under the MIT License. See LICENSE for details.