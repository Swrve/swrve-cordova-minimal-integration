# Swrve Minimal Integration Template

You can start your new cordova project perfectly with this template.

This template uses:

* [Swrve Cordova SDK](https://github.com/Swrve/swrve-cordova-sdk/)

## Requirements

* **Node.js:** _10.x_ or higher
* **Cordova:** _9.x_ or higher
* **cordova-iOS:** _5.0.0 or higher
* **cordova-Android:** _8.0.0 or higher

---

## Installation

For this template you will need either the [cordova](https://cordova.apache.org/docs/en/latest/guide/cli/) or some flavor that is based on cordova like [phonegap](http://docs.phonegap.com/getting-started/1-install-phonegap/desktop/)

```bash
  cordova create hello com.example.hello HelloWorld --template https://github.com/Swrve/swrve-cordova-minimal-integration.git
  phonegap create hello com.example.hello HelloWorld --template https://github.com/Swrve/swrve-cordova-minimal-integration.git
```

## Usage

Before starting, please read the integration guide for the [Swrve Cordova Plugin](https://docs.swrve.com/developer-documentation/integration/cordova/) first.

If you want to try a build quickly and see the generated projects at a minimum you need to do the following:

1. Edit `cordova-plugin-swrve` path in `config.xml` to point to where you have downloaded the SDK.
2. Install the plugin to your application with `cordova plugin add cordova-plugin-swrve`.
3. Replace the values at properties `swrve.appId` and `swrve.apiKey` with your Swrve App ID and API key.
4. If you are not using push. Set the `swrve.pushEnabled` property to `false`. If you are, please follow the afforementioned integration guide.  

## Preferences that are available on Swrve Cordova SDK

Our SDK uses a series of hooks to inject code to the final iOS/Android project. Below, we provide a table with all available preferences the SwrveSDK can interpret.

### Preferences availables for iOS/Android

 Preference | Description | type |
| --- | --- | --- |
| `swrve.appId` | Swrve **App Id** |  string |
| `swrve.apiKey` | Swrve **API Key** | string |  
| `swrve.pushEnabled` | Include and enable push notifications. | boolean|
| `swrve.adJourneyEnabled` | Include and enable ad journey support. | boolean|

### Preferences only available on Android

 Preference | Description | type |
| --- | --- | --- |
| `swrve.drawablePath` | Local path that points to your icon files that are used for Android push notifications. | string |
| `swrve.googleServicesPath` | Path for your local google-services.json file that is **required** to use Android push notifications.  | string |

### Preferences only available on iOS

 Preference | Description | type |
| --- | --- | --- |
| `swrve.appGroupIdentifier` | This is an application group identifier that is used for push notification influence tracking. |  string |
| `swrve.clearPushBadgeOnStartup` | When enabled, the application clears any notification badges from the app icon when the app starts. | boolean |  
| `swrve.pushNotificationEvent` | Event that triggers the push notification permission request. Include if you do not want to ask for push permissions on startup. | string |
| `swrve.provisionalPushNotificationEvent` | Event that triggers token retrieval for provisional push notifications. | string |

## Additional Information

* This template includes the [google-services.json](https://github.com/Swrve/swrve-cordova-minimal-integration/blob/dev/template_src/swrve-support-files/android/google-services.json) which come from the [firebase-quickstart](https://github.com/firebase/quickstart-android) git Project. For more information on how to setup and create the google-services.json for your project please read the [google firebase documentation](https://support.google.com/firebase/answer/7015592?hl=en)
* The images found under `swrve-support-files/drawable/` are used for Android Push Notifications. For more information on them please consult the **Push Notifications** section of the [cordova integration guide](https://docs.swrve.com/developer-documentation/integration/cordova/#Push_notifications).
* If you are using the Phonegap CLI. There is an issue where the cordova-android version is set to 7.1.1 instead of the recommended cordova-android 8.0.0. cordova-android 7.1.1 does not set the Android API version to 28 which can cause gradle issues. To fix this, you can go to `platform/android/project.properties` and replace the `target` value from `android-27` to `android-28`.
* As part of our basic integration example, we have added a dependency on [cordova-plugin-x-toast](https://www.npmjs.com/package/cordova-plugin-x-toast) in the `package.json` to display debug information on the app itself. This is not required to run Swrve.
