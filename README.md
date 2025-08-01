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
    return RaisedButton(
        onPressed: SystemSettings.app,
        child: Text('Open app settings'),
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
