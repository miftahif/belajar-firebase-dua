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
    apiKey: 'AIzaSyAwJ2RUZ9Ht8_yFASVf6Qa5Rc6t0u0fCuA',
    appId: '1:891299979774:web:38d611402e8db0a80c60af',
    messagingSenderId: '891299979774',
    projectId: 'belajar-firebase-dua',
    authDomain: 'belajar-firebase-dua.firebaseapp.com',
    storageBucket: 'belajar-firebase-dua.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASJJeDRlwK2T89lTdZMMw-F14VkSlpt6Y',
    appId: '1:891299979774:android:5692832ba764d3340c60af',
    messagingSenderId: '891299979774',
    projectId: 'belajar-firebase-dua',
    storageBucket: 'belajar-firebase-dua.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVqySixz6X3CFUGFFB9N5BAxo5O0oc-XM',
    appId: '1:891299979774:ios:2f58e33be9b3ca510c60af',
    messagingSenderId: '891299979774',
    projectId: 'belajar-firebase-dua',
    storageBucket: 'belajar-firebase-dua.appspot.com',
    iosClientId:
        '891299979774-idhf9ncv6fj4tuf985ifag1oivrp5klq.apps.googleusercontent.com',
    iosBundleId: 'com.example.belajarFirebaseDua',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDVqySixz6X3CFUGFFB9N5BAxo5O0oc-XM',
    appId: '1:891299979774:ios:2f58e33be9b3ca510c60af',
    messagingSenderId: '891299979774',
    projectId: 'belajar-firebase-dua',
    storageBucket: 'belajar-firebase-dua.appspot.com',
    iosClientId:
        '891299979774-idhf9ncv6fj4tuf985ifag1oivrp5klq.apps.googleusercontent.com',
    iosBundleId: 'com.example.belajarFirebaseDua',
  );
}
