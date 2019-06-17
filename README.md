# 

# Swrve Minimal Integration Template

You can start your new cordova project perfectly with this template.

This template uses:
* [Swrve CordovaSDK](https://github.com/Swrve/swrve-cordova-sdk/)

## Requirements
* **Node.js:** _10.x_ or higher
* **Cordova:** _9.x_ or higher
* **cordova-iOS:** _5.0.0 or higher
* **cordova-Android:** _8.0.0 or higher

---

## Installation

This template needs cordova or phonegap, for more information [cordova installation](https://cordova.apache.org/docs/en/latest/guide/cli/) or [phonegap installation](http://docs.phonegap.com/getting-started/1-install-phonegap/desktop/).


``` bash
$ cordova create hello com.example.hello HelloWorld --template swrve-cordova-minimal-integration
$ phonegap create hello com.example.hello HelloWorld --template swrve-cordova-minimal-integration
```

## Usage

You can use cordova or phonegap commands.

Example usage:
```
$ npm install
$ npm start
```
```
$ npm run build
$ cordova platform add android
$ cordova run android
$ cordova platform add ios
$ cordova run ios
```

## Important to know

This template include the [google-services.json](https://github.com/Swrve/swrve-cordova-minimal-integration/template_src/swrve-support-files/android/google-services.json) based from the [firebase-quickstart](https://github.com/firebase/quickstart-android) git Project. For more information about how to setup and create the google-services.json for your project access the [google firebase documentation](https://support.google.com/firebase/answer/7015592?hl=en)