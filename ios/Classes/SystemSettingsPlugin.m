#import "SystemSettingsPlugin.h"
#if __has_include(<system_settings_2/system_settings_2-Swift.h>)
#import <system_settings_2/system_settings_2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "system_settings_2-Swift.h"
#endif

@implementation SystemSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemSettingsPlugin registerWithRegistrar:registrar];
}
@end
