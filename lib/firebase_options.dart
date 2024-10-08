// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxHsqo42dcWgoFQhifgGfABpJ9PKP_JTA',
    appId: '1:907917663409:android:9cdd3b3c57d24bb5edd690',
    messagingSenderId: '907917663409',
    projectId: 'meruinnovators-b4e73',
    storageBucket: 'meruinnovators-b4e73.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKQl7cXXSY_w_HXuZ9gekvHLiLJ_02MKg',
    appId: '1:907917663409:ios:a42ae7e2569300f9edd690',
    messagingSenderId: '907917663409',
    projectId: 'meruinnovators-b4e73',
    storageBucket: 'meruinnovators-b4e73.appspot.com',
    androidClientId: '907917663409-4ambi1g4abuc1k88te1kbmuduu9v4vco.apps.googleusercontent.com',
    iosClientId: '907917663409-7frp0co9lj92ljafig2uneh003vu20pb.apps.googleusercontent.com',
    iosBundleId: 'com.meruinnovators.meruinnovators',
  );
}
