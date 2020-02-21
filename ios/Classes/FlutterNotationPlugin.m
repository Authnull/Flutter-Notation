#import "FlutterNotationPlugin.h"
#if __has_include(<flutter_notation/flutter_notation-Swift.h>)
#import <flutter_notation/flutter_notation-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_notation-Swift.h"
#endif

@implementation FlutterNotationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterNotationPlugin registerWithRegistrar:registrar];
}
@end
