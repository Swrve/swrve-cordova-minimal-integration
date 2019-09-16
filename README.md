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

## Preferences that are available on Swrve Cordova SDK.
Our SDK uses a series of hooks to inject code to the final iOS/Android project. Below, we provide a table with all available preferences the SwrveSDK can interpret. 

### Preferences availables for iOS/Android.

 Preference | Description | type |
| --- | --- | --- | 
| `swrve.appId` | This is the expected Swrve **App Id** |  string |
| `swrve.apiKey` | This is the expected Swrve **API Key** | string |  
| `swrve.pushEnabled` | If you want use Swrve's Push Solution | boolean|
| `swrve.adJourneyEnabled` | This will add the respective code for your app to support Ad Journey If you want use Swrve Push inside your App | boolean|

### Preferences only available on Android.
 Preference | Description | type |
| --- | --- | --- | 
| `swrve.drawablePath` | Path for you local drawable resources that will be used by our Android Push solution | string |
| `swrve.googleServicesPath` | Path for you local google services json file **this path should be provided when using firebase push for Android**  | string |

### Preferences only available on iOS.
 Preference | Description | type |
| --- | --- | --- | 
| `swrve.appGroupIdentifier` | This is an Apple Group Identifier that will be used for push influence tracking |  string |
| `swrve.clearPushBadgeOnStartup` | When defined as true your iOS app will clear any badge from you app when the app opened | boolean |  

## Additional Information

* This template includes the [google-services.json](https://github.com/Swrve/swrve-cordova-minimal-integration/blob/dev/template_src/swrve-support-files/android/google-services.json) which come from the [firebase-quickstart](https://github.com/firebase/quickstart-android) git Project. For more information on how to setup and create the google-services.json for your project please read the [google firebase documentation](https://support.google.com/firebase/answer/7015592?hl=en)
* The images found under `swrve-support-files/drawable/` are used for Android Push Notifications. For more information on them please consult the **Push Notifications** section of the [cordova integration guide](https://docs.swrve.com/developer-documentation/integration/cordova/#Push_notifications).
* If you are using the Phonegap CLI. There is an issue where the cordova-android version is set to 7.1.1 instead of the recommended cordova-android 8.0.0. cordova-android 7.1.1 does not set the Android API version to 28 which can cause gradle issues. To fix this, you can go to `platform/android/project.properties` and replace the `target` value from `android-27` to `android-28`.
* As part of our basic integration example, we have added a dependency on [cordova-plugin-x-toast](https://www.npmjs.com/package/cordova-plugin-x-toast) in the `package.json` to display debug information on the app itself. This is not required to run Swrve.
