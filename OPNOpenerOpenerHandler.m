#import "OPNOpenerOpenerHandler.h"

@implementation OPNOpenerOpenerHandler

- (instancetype)init {
    self = [super init];

    if (self) {
        self.name = @"OpenerOpener";
        self.identifier = @"com.domg.openeropener";
    }

    return self;
}

- (id)openURL:(NSURL *)url sender:(NSString *)sender {
    if (([url.scheme isEqualToString:@"http"] || [url.scheme isEqualToString:@"https"])) {
        return [NSURL URLWithString: [NSString stringWithFormat:@"opener://x-callback-url/show-options?url=%@", url.absoluteString]];
    }

    return nil;
}

@end

