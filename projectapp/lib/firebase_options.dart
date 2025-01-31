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
    apiKey: 'AIzaSyBeg5SuVBmVSDwSkwjvc-6FaDI1p3u2fIw',
    appId: '1:282946079215:web:3efa8216bc4f0acd52ce1a',
    messagingSenderId: '282946079215',
    projectId: 'tourist-trail',
    authDomain: 'tourist-trail.firebaseapp.com',
    storageBucket: 'tourist-trail.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBQY2eco9KgYYLMpZTtLKdtByMCcFIBzE',
    appId: '1:282946079215:android:e40e06e71e17e72052ce1a',
    messagingSenderId: '282946079215',
    projectId: 'tourist-trail',
    storageBucket: 'tourist-trail.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjJyf_BU_VfZ9q6Yf7x72IepzeQaG5eQg',
    appId: '1:282946079215:ios:b328f4907c527d9452ce1a',
    messagingSenderId: '282946079215',
    projectId: 'tourist-trail',
    storageBucket: 'tourist-trail.appspot.com',
    iosBundleId: 'com.example.projectapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjJyf_BU_VfZ9q6Yf7x72IepzeQaG5eQg',
    appId: '1:282946079215:ios:a8583a6e1e67031f52ce1a',
    messagingSenderId: '282946079215',
    projectId: 'tourist-trail',
    storageBucket: 'tourist-trail.appspot.com',
    iosBundleId: 'com.example.projectapp.RunnerTests',
  );
}
