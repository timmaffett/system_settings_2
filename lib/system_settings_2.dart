import 'dart:async';

import 'package:flutter/services.dart';

/// SystemSettings is a class that provides static methods to trigger
/// bringing up the system settings on IOS or Android.
///
/// On Android, this plugin supports various system setting pages as well as
/// the app info and app notification settings page.
///
/// On iOS, this plugin will *always open the app settings page*, if any settings
/// have been defined via a SettingsBundle. If not, the settings app will open
/// with the home page. Unfortunately, this is the only way that complies with
/// Apple's guidelines for the App Store.
class SystemSettings {
  static const MethodChannel _channel = MethodChannel('system_settings_2');

  /// Opens the device's power options/settings page.
  static Future<void> powerOptions() async {
    return await _channel.invokeMethod('power-options');
  }

  /// Opens the app info/settings page for the current app.
  static Future<void> app() async {
    return await _channel.invokeMethod('app');
  }

  /// Opens the app notification settings page for the current app.
  static Future<void> appNotifications() async {
    return await _channel.invokeMethod('app-notifications');
  }

  /// Opens the main system settings page.
  static Future<void> system() async {
    return await _channel.invokeMethod('system');
  }

  /// Opens the power usage/battery usage settings page.
  static Future<void> powerUsage() async {
    return await _channel.invokeMethod('power-usage');
  }

  /// Opens the location settings page.
  static Future<void> location() async {
    return await _channel.invokeMethod('location');
  }

  /// Opens the Wi-Fi settings page.
  static Future<void> wifi() async {
    return await _channel.invokeMethod('wifi');
  }

  /// Opens the Bluetooth settings page.
  static Future<void> bluetooth() async {
    return await _channel.invokeMethod('bluetooth');
  }

  /// Opens the NFC settings page.
  static Future<void> nfc() async {
    return await _channel.invokeMethod('nfc');
  }

  /// Opens the security settings page.
  static Future<void> security() async {
    return await _channel.invokeMethod('security');
  }

  /// Opens the display settings page.
  static Future<void> display() async {
    return await _channel.invokeMethod('display');
  }

  /// Opens the date and time settings page.
  static Future<void> date() async {
    return await _channel.invokeMethod('date');
  }

  /// Opens the sound settings page.
  static Future<void> sound() async {
    return await _channel.invokeMethod('sound');
  }

  /// Opens the installed apps/settings page.
  static Future<void> apps() async {
    return await _channel.invokeMethod('apps');
  }

  /// Opens the wireless settings page.
  static Future<void> wireless() async {
    return await _channel.invokeMethod('wireless');
  }

  /// Opens the device information page.
  static Future<void> deviceInfo() async {
    return await _channel.invokeMethod('device-info');
  }

  /// Opens the data usage settings page.
  static Future<void> dataUsage() async {
    return await _channel.invokeMethod('data-usage');
  }

  /// Opens the data roaming settings page.
  static Future<void> dataRoaming() async {
    return await _channel.invokeMethod('data-roaming');
  }

  /// Opens the locale/language settings page.
  static Future<void> locale() async {
    return await _channel.invokeMethod('locale');
  }

  /// Opens the default apps settings page.
  static Future<void> defaultApps() async {
    return await _channel.invokeMethod('default-apps');
  }

  /// Opens the airplane mode settings page.
  static Future<void> airplaneMode() async {
    return await _channel.invokeMethod('airplane-mode');
  }

  /// Opens the privacy settings page.
  static Future<void> privacy() async {
    return await _channel.invokeMethod('privacy');
  }

  /// Opens the accessibility settings page.
  static Future<void> accessibility() async {
    return await _channel.invokeMethod('accessibility');
  }

  /// Opens the internal storage settings page.
  static Future<void> internalStorage() async {
    return await _channel.invokeMethod('internal-storage');
  }

  /// Opens the notification policy settings page.
  static Future<void> notificationPolicy() async {
    return await _channel.invokeMethod('notification-policy');
  }
}
