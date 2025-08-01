# system_settings_2

[![pub package](https://img.shields.io/pub/v/system_settings_2.svg)](https://pub.dev/packages/system_settings_2)
[![license](https://img.shields.io/badge/license-MIT-green)](https://github.com/timmaffett/system_settings_2/blob/master/LICENSE)

Flutter plugin to open system and app settings from an iOS and Android app.

On **Android**, this plugin supports various system setting pages as well as the app info and app notification settings page.

On **iOS**, this plugin will always open the app settings page, if any settings have been defined via a `SettingsBundle`.
If not, the settings app will open with the home page. Unfortunately, this is the only way that complies with Apple's guidelines for the App Store.

## Getting Started

Add this to your package's pubspec.yaml file:

```yaml
dependencies:
  system_settings_2: 3.0.0
```

Next, import the package into your dart code:

```dart
import 'package:system_settings_2/system_settings_2.dart';
```

## Example

Example which opens the app settings:

```dart
Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ElevatedButton(
          child: Text('App info'),
          onPressed: () => SystemSettings.app(),
        ),
        ElevatedButton(
          child: Text('App notifications'),
          onPressed: () => SystemSettings.appNotifications(),
        ),
        ElevatedButton(
          child: Text('Settings'),
          onPressed: () => SystemSettings.system(),
        ),
        ElevatedButton(
          child: Text('Location'),
          onPressed: () => SystemSettings.location(),
        ),
        ElevatedButton(
          child: Text('Wi-Fi'),
          onPressed: () => SystemSettings.wifi(),
        ),
        ElevatedButton(
          child: Text('Bluetooth'),
          onPressed: () => SystemSettings.bluetooth(),
        ),
        ElevatedButton(
          child: Text('NFC'),
          onPressed: () => SystemSettings.nfc(),
        ),
        ElevatedButton(
          child: Text('Power Options'),
          onPressed: () => SystemSettings.powerOptions(),
        ),
        ElevatedButton(
          child: Text('Security'),
          onPressed: () => SystemSettings.security(),
        ),
        ElevatedButton(
          child: Text('Display'),
          onPressed: () => SystemSettings.display(),
        ),
        ElevatedButton(
          child: Text('Date & time'),
          onPressed: () => SystemSettings.date(),
        ),
        ElevatedButton(
          child: Text('Sound'),
          onPressed: () => SystemSettings.sound(),
        ),
        ElevatedButton(
          child: Text('Apps'),
          onPressed: () => SystemSettings.apps(),
        ),
        ElevatedButton(
          child: Text('Network & internet'),
          onPressed: () => SystemSettings.wireless(),
        ),
        ElevatedButton(
          child: Text('Device info'),
          onPressed: () => SystemSettings.deviceInfo(),
        ),
        ElevatedButton(
          child: Text('Data usage'),
          onPressed: () => SystemSettings.dataUsage(),
        ),
        ElevatedButton(
          child: Text('Data roaming'),
          onPressed: () => SystemSettings.dataRoaming(),
        ),
        ElevatedButton(
          child: Text('Locale'),
          onPressed: () => SystemSettings.locale(),
        ),
        ElevatedButton(
          child: Text('Default apps'),
          onPressed: () => SystemSettings.defaultApps(),
        ),
        ElevatedButton(
          child: Text('Airplane/offline mode'),
          onPressed: () => SystemSettings.airplaneMode(),
        ),
        ElevatedButton(
          child: Text('Privacy'),
          onPressed: () => SystemSettings.privacy(),
        ),
        ElevatedButton(
          child: Text('Accessibility'),
          onPressed: () => SystemSettings.accessibility(),
        ),
        ElevatedButton(
          child: Text('Internal storage'),
          onPressed: () => SystemSettings.internalStorage(),
        ),
        ElevatedButton(
          child: Text('Notification policy / DND'),
          onPressed: () => SystemSettings.notificationPolicy(),
        ),
      ],
    );
}
```

## Bugs and feature requests

Have a bug or a feature request? Please first search for existing and closed issues.
If your problem or idea is not addressed yet, [please open a new issue](https://github.com/timmaffett/system_settings_2/issues/new).

## Acknowledgements

This package is based on source code from the package `system_settings 2.1.0` by Florian Weinaug @fweinaug.  It was no longer actively maintained and no longer worked with modern flutter build environments, so I have updated it to work once again.

## Copyright & License

Copyright 2020–2025 Tim Maffett, Florian Weinaug.
Code released under the [MIT license](https://github.com/timmaffett/system_settings_2/blob/master/LICENSE).
