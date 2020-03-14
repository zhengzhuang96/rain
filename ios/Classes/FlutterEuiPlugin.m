#import "FlutterEuiPlugin.h"
#if __has_include(<flutter_eui/flutter_eui-Swift.h>)
#import <flutter_eui/flutter_eui-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_eui-Swift.h"
#endif

@implementation FlutterEuiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterEuiPlugin registerWithRegistrar:registrar];
}
@end
