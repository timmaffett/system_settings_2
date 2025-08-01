package xyz.hiveright.system_settings_2

import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.lang.Exception

class SystemSettingsPlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var channel: MethodChannel
  private lateinit var flutterPluginBinding: FlutterPlugin.FlutterPluginBinding

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    this.flutterPluginBinding = flutterPluginBinding
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "system_settings_2")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    when (call.method) {
      "app"                 -> { openAppSettings(); result.success(null) }
      "app-notifications"   -> { openAppNotificationSettings(); result.success(null) }
      "system"              -> { openSystemSettings(); result.success(null) }
      "location"            -> { openSetting(Settings.ACTION_LOCATION_SOURCE_SETTINGS); result.success(null) }
      "wifi"                -> { openSetting(Settings.ACTION_WIFI_SETTINGS); result.success(null) }
      "bluetooth"           -> { openSetting(Settings.ACTION_BLUETOOTH_SETTINGS); result.success(null) }
      "nfc"                 -> { openSetting(Settings.ACTION_NFC_SETTINGS); result.success(null) }
      "security"            -> { openSetting(Settings.ACTION_SECURITY_SETTINGS); result.success(null) }
      "display"             -> { openSetting(Settings.ACTION_DISPLAY_SETTINGS); result.success(null) }
      "date"                -> { openSetting(Settings.ACTION_DATE_SETTINGS); result.success(null) }
      "sound"               -> { openSetting(Settings.ACTION_SOUND_SETTINGS); result.success(null) }
      "apps"                -> { openSetting(Settings.ACTION_APPLICATION_SETTINGS); result.success(null) }
      "wireless"            -> { openSetting(Settings.ACTION_WIRELESS_SETTINGS); result.success(null) }
      "device-info"         -> { openSetting(Settings.ACTION_DEVICE_INFO_SETTINGS); result.success(null) }
      "data-usage"          -> { openSetting(Settings.ACTION_DATA_USAGE_SETTINGS); result.success(null) }
      "data-roaming"        -> { openSetting(Settings.ACTION_DATA_ROAMING_SETTINGS); result.success(null) }
      "locale"              -> { openSetting(Settings.ACTION_LOCALE_SETTINGS); result.success(null) }
      "default-apps"        -> { openSetting(Settings.ACTION_MANAGE_DEFAULT_APPS_SETTINGS); result.success(null) }
      "airplane-mode"       -> { openSetting(Settings.ACTION_AIRPLANE_MODE_SETTINGS); result.success(null) }
      "privacy"             -> { openSetting(Settings.ACTION_PRIVACY_SETTINGS); result.success(null) }
      "accessibility"       -> { openSetting(Settings.ACTION_ACCESSIBILITY_SETTINGS); result.success(null) }
      "internal-storage"    -> { openSetting(Settings.ACTION_INTERNAL_STORAGE_SETTINGS); result.success(null) }
      "notification-policy" -> { openSetting(Settings.ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS); result.success(null) }
      "power-options"       -> { openSetting(Settings.ACTION_BATTERY_SAVER_SETTINGS); result.success(null) }
      "power-usage"         -> { openSetting(Intent.ACTION_POWER_USAGE_SUMMARY); result.success(null) }
      else                  -> result.notImplemented()
    }
  }

  private fun openAppSettings() {
    val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)

    val uri = Uri.fromParts("package", flutterPluginBinding.applicationContext.packageName, null)
    intent.data = uri

    flutterPluginBinding.applicationContext.startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
  }

  private fun openAppNotificationSettings() {
    val intent = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
      Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS)
              .putExtra(Settings.EXTRA_APP_PACKAGE, flutterPluginBinding.applicationContext.packageName)
    } else {
      Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
              .setData(Uri.parse("package:${flutterPluginBinding.applicationContext.packageName}"))
    }

    flutterPluginBinding.applicationContext.startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
  }

  private fun openSetting(name: String) {
    try {
      flutterPluginBinding.applicationContext.startActivity(Intent(name).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
    } catch (e: Exception) {
      openSystemSettings()
    }
  }

  private fun openSystemSettings() {
    flutterPluginBinding.applicationContext.startActivity(Intent(Settings.ACTION_SETTINGS).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
