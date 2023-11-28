// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDnLCSc_D2bl0gDkXTFasaT0JwEcm4S7qs',
    appId: '1:268973470853:web:08e0072dc48d47674965ec',
    messagingSenderId: '268973470853',
    projectId: 'kamus-app-3f65c',
    authDomain: 'kamus-app-3f65c.firebaseapp.com',
    storageBucket: 'kamus-app-3f65c.appspot.com',
    measurementId: 'G-22WFMEPRG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCA5Y0DuatVhb_-7C5dzIZB3QBRaY23b18',
    appId: '1:268973470853:android:a61fccfaf3b9e10a4965ec',
    messagingSenderId: '268973470853',
    projectId: 'kamus-app-3f65c',
    storageBucket: 'kamus-app-3f65c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRzEHboHkNw2DmaJ3gVXgMlV_96Z46i3w',
    appId: '1:268973470853:ios:3c5837aaf4b569454965ec',
    messagingSenderId: '268973470853',
    projectId: 'kamus-app-3f65c',
    storageBucket: 'kamus-app-3f65c.appspot.com',
    iosBundleId: 'com.example.dictionaryApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRzEHboHkNw2DmaJ3gVXgMlV_96Z46i3w',
    appId: '1:268973470853:ios:51236dc20b1dba034965ec',
    messagingSenderId: '268973470853',
    projectId: 'kamus-app-3f65c',
    storageBucket: 'kamus-app-3f65c.appspot.com',
    iosBundleId: 'com.example.dictionaryApp.RunnerTests',
  );
}