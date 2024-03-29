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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAI9CQ8S2O6Jj-KxJUdictI8UFIr7kppqo',
    appId: '1:981663899415:web:71bbc5645b391248176152',
    messagingSenderId: '981663899415',
    projectId: 'drooli-cla',
    authDomain: 'drooli-cla.firebaseapp.com',
    storageBucket: 'drooli-cla.appspot.com',
    measurementId: 'G-5EE035YWPF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6FaBZZzQZkdUUY3S7q47fsxK1KPBk27I',
    appId: '1:981663899415:android:b11cfcdf5384d06a176152',
    messagingSenderId: '981663899415',
    projectId: 'drooli-cla',
    storageBucket: 'drooli-cla.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB3JQ3oJooppFrk6kGOc6nB0pKJfdwFouE',
    appId: '1:981663899415:ios:fb887d7a9a10b472176152',
    messagingSenderId: '981663899415',
    projectId: 'drooli-cla',
    storageBucket: 'drooli-cla.appspot.com',
    iosClientId: '981663899415-2tahe1v278aj5k79gsmrs5hodgis8l9r.apps.googleusercontent.com',
    iosBundleId: 'com.example.claApp',
  );
}
