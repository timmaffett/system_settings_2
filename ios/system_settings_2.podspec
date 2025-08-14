#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint system_settings_2.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'system_settings_2'
  s.version          = '3.0.0'
  s.summary          = 'Flutter IOS System Settings Access.'
  s.description      = <<-DESC
System Settings Access Plugin for Flutter.
                       DESC
  s.homepage         = 'https://github.com/timmaffett/system_settings_2'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'HiveRight Tech' => 'timmaffett@gmail.com' }
  s.source           = { :git => 'https://github.com/timmaffett/system_settings_2.git', :tag => s.version.to_s }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES', 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'IPHONEOS_DEPLOYMENT_TARGET' => '12.0'
  }
  s.swift_version = '5.0'
end
