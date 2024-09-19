## meruinnovatorsapp
- This app is built by meru innovators club members and is under development. Their will be more changes on the app

## APK Signing
To ensure that the correct SHA1 key is available for signing the APK to enable social auth with Firebase, we need to maintain a single public keystore so that we don't need to add everyone's debug key to the Firebase app.

Create a file `android/key.properties` with values as follows
```jks
storePassword=meruinnovators@publicDevKey
keyPassword=meruinnovators@publicDevKey
keyAlias=meruinnovators@publicDevKey
storeFile=../dev-keystore.jks
```
Ensure the `storeFile` path is correct depending on your OS

## Setting up the application

1. Clone the application:
    ```bash
    git clone https://github.com/Piexie3/meruinnovators.git
    ```
2. Ensure you have the latest version of Flutter installed:
    ```bash
    flutter upgrade
    ```
3. Install dependencies:
    ```bash
    flutter pub get
    ```
4. Run code generation:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
5. Build the application:
    ```bash
    flutter build apk
    ```
6. Run the application:
    - For development:
    ```bash
    flutter run  --flavor development --target lib/main_dev.dart
    ```