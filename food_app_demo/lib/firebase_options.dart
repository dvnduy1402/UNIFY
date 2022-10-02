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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBJPMGfEAN_aApOw92QS5vnlkJ_zBzfMHA',
    appId: '1:970638536567:web:e0e24c613bdbb01aa07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    authDomain: 'food-app-289b5.firebaseapp.com',
    storageBucket: 'food-app-289b5.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVrokK57KNP5wD9M8WMENMqvxVoxlO_II',
    appId: '1:970638536567:android:f902c0cfbae5a433a07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    storageBucket: 'food-app-289b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2Ub5Fc_nT33ZPUbPYR39J1M59qoKtJCQ',
    appId: '1:970638536567:ios:15f913df1b8d82f0a07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    storageBucket: 'food-app-289b5.appspot.com',
    iosClientId: '970638536567-ir0cgvvkvjrit3767qie428oidsg7djb.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodAppDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2Ub5Fc_nT33ZPUbPYR39J1M59qoKtJCQ',
    appId: '1:970638536567:ios:15f913df1b8d82f0a07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    storageBucket: 'food-app-289b5.appspot.com',
    iosClientId: '970638536567-ir0cgvvkvjrit3767qie428oidsg7djb.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodAppDemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBJPMGfEAN_aApOw92QS5vnlkJ_zBzfMHA',
    appId: '1:970638536567:web:794fdc1ba9554da8a07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    authDomain: 'food-app-289b5.firebaseapp.com',
    storageBucket: 'food-app-289b5.appspot.com',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyBJPMGfEAN_aApOw92QS5vnlkJ_zBzfMHA',
    appId: '1:970638536567:web:2f16c58257ee886aa07b72',
    messagingSenderId: '970638536567',
    projectId: 'food-app-289b5',
    authDomain: 'food-app-289b5.firebaseapp.com',
    storageBucket: 'food-app-289b5.appspot.com',
  );
}
