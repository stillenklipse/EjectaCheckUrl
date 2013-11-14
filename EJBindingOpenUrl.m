#import "EJBindingOpenUrl.h"

@implementation EJBindingOpenUrl


- (id)initWithContext:(JSContextRef)
ctx argc:(size_t)argc
                 argv:(const JSValueRef [])argv
{
    if( self = [super initWithContext:ctx argc:argc argv:argv] ) {
        
        if( argc > 0 ) {
            url = JSValueToNSString(ctx, argv[0]);
        }
    }
    return self;
}


EJ_BIND_FUNCTION( isUrlSafeToOpen, ctx, argc, argv ){
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:url]]) {
        JSValueRef fooJSValue = NSStringToJSValue( ctx, @"true");
        return fooJSValue;
    }
    JSValueRef fooJSValue = NSStringToJSValue( ctx, @"false" );
    return fooJSValue;
}

EJ_BIND_FUNCTION( openPassedUrl, ctx, argc, argv ){
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    return NULL;
}


@end
