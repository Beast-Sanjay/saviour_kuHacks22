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
    apiKey: 'AIzaSyC0tsWHGEgy9mLuH-wGBStOSWX4oF4teBU',
    appId: '1:24202071755:web:1883b71ed8e60b6d80154e',
    messagingSenderId: '24202071755',
    projectId: 'saviour-76151',
    authDomain: 'saviour-76151.firebaseapp.com',
    storageBucket: 'saviour-76151.appspot.com',
    measurementId: 'G-ECZEQ58VVV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBL-9d6UL3mBB_mLC4SY7YazL94IFLqDWw',
    appId: '1:24202071755:android:3c03469bfc7e228680154e',
    messagingSenderId: '24202071755',
    projectId: 'saviour-76151',
    storageBucket: 'saviour-76151.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCLK6hrIR7Jsos5o889oYySJ8SNj48M2OA',
    appId: '1:24202071755:ios:c8cfacdb057d9bb680154e',
    messagingSenderId: '24202071755',
    projectId: 'saviour-76151',
    storageBucket: 'saviour-76151.appspot.com',
    iosClientId: '24202071755-c6v80ahg1n1k77b5eebuvmovcni2pd03.apps.googleusercontent.com',
    iosBundleId: 'com.example.saviour',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCLK6hrIR7Jsos5o889oYySJ8SNj48M2OA',
    appId: '1:24202071755:ios:c8cfacdb057d9bb680154e',
    messagingSenderId: '24202071755',
    projectId: 'saviour-76151',
    storageBucket: 'saviour-76151.appspot.com',
    iosClientId: '24202071755-c6v80ahg1n1k77b5eebuvmovcni2pd03.apps.googleusercontent.com',
    iosBundleId: 'com.example.saviour',
  );
}