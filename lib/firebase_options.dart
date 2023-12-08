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
    apiKey: 'AIzaSyBxbilO6sBja7zm0A1Yo1mS4FhYRm54eCg',
    appId: '1:951730620157:web:38d3b938a9309b72236094',
    messagingSenderId: '951730620157',
    projectId: 'donnatingson-52b92',
    authDomain: 'donnatingson-52b92.firebaseapp.com',
    storageBucket: 'donnatingson-52b92.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRT2NF3CaHtncVso35xlIcCGebDuqZ_3k',
    appId: '1:951730620157:android:65fc94688aed527b236094',
    messagingSenderId: '951730620157',
    projectId: 'donnatingson-52b92',
    storageBucket: 'donnatingson-52b92.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgb-fzcVH0jekxzsVEUhwMtaozGejVjmo',
    appId: '1:951730620157:ios:5e0488f3b5bb0038236094',
    messagingSenderId: '951730620157',
    projectId: 'donnatingson-52b92',
    storageBucket: 'donnatingson-52b92.appspot.com',
    iosBundleId: 'com.example.donnatignson',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgb-fzcVH0jekxzsVEUhwMtaozGejVjmo',
    appId: '1:951730620157:ios:01591630094eedb1236094',
    messagingSenderId: '951730620157',
    projectId: 'donnatingson-52b92',
    storageBucket: 'donnatingson-52b92.appspot.com',
    iosBundleId: 'com.example.donnatignson.RunnerTests',
  );
}
