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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD2VLb2EEmP8Ai8T9QChGx94loe4rG6Tv0',
    appId: '1:861372386050:web:a63eed4f5304291201501b',
    messagingSenderId: '861372386050',
    projectId: 'medicine-sell-946b7',
    authDomain: 'medicine-sell-946b7.firebaseapp.com',
    storageBucket: 'medicine-sell-946b7.appspot.com',
    measurementId: 'G-FY8FH2NNFK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDDG4hg6G7WoscCW-XYmG0dAd7HSwDPdrc',
    appId: '1:861372386050:android:443a14dec25c1ded01501b',
    messagingSenderId: '861372386050',
    projectId: 'medicine-sell-946b7',
    storageBucket: 'medicine-sell-946b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUGWbqw3QdakM1yv66rfwEXcG7YsKwHyc',
    appId: '1:861372386050:ios:7a075fca787ecf4e01501b',
    messagingSenderId: '861372386050',
    projectId: 'medicine-sell-946b7',
    storageBucket: 'medicine-sell-946b7.appspot.com',
    iosClientId:
        '861372386050-uqn8s329u2asvk2i8nut9llkamg5t5cv.apps.googleusercontent.com',
    iosBundleId: 'com.example.trijalsrimal',
  );
}
