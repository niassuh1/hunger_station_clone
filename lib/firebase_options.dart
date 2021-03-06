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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDK4Gn_dwPCoHBZY5zasXUOnyESnxX46L8',
    appId: '1:172127626129:android:170a5f83ac739564cfb030',
    messagingSenderId: '172127626129',
    projectId: 'hunger-station-e5cef',
    storageBucket: 'hunger-station-e5cef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUKHSkhim9PZYyhKd6mAz_OZAtuslLHoA',
    appId: '1:172127626129:ios:75f6d2199e913365cfb030',
    messagingSenderId: '172127626129',
    projectId: 'hunger-station-e5cef',
    storageBucket: 'hunger-station-e5cef.appspot.com',
    iosClientId: '172127626129-n7g2oqt2uvuuoifobkdtn91fnh3rgv99.apps.googleusercontent.com',
    iosBundleId: 'com.example.hungerStationClone',
  );
}
