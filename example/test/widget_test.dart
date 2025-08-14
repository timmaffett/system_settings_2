import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_settings_2/system_settings_2.dart';

void main() {
  const channel = MethodChannel('system_settings_2');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      return null;
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('SystemSettings.powerOptions invokes method channel', () async {
    await SystemSettings.powerOptions();
  });

  test('SystemSettings.app invokes method channel', () async {
    await SystemSettings.app();
  });

  test('SystemSettings.appNotifications invokes method channel', () async {
    await SystemSettings.appNotifications();
  });
}
