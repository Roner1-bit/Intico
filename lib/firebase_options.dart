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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWIIhy5wsnspFkCwn_f7s5l1a9l1DFCpY',
    appId: '1:818360871440:android:2b17de2e06c10b75057895',
    messagingSenderId: '818360871440',
    projectId: 'intico-1d09d',
    databaseURL: 'https://intico-1d09d-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'intico-1d09d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDom0uqEJzGN-GRcRwROHV8ysff_iZHcnM',
    appId: '1:818360871440:ios:e3d99151debffcc8057895',
    messagingSenderId: '818360871440',
    projectId: 'intico-1d09d',
    databaseURL: 'https://intico-1d09d-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'intico-1d09d.appspot.com',
    iosClientId: '818360871440-8s5g8186dvcen0d9ptgesora7dck6mgi.apps.googleusercontent.com',
    iosBundleId: 'com.example.inticoGlob',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDom0uqEJzGN-GRcRwROHV8ysff_iZHcnM',
    appId: '1:818360871440:ios:e3d99151debffcc8057895',
    messagingSenderId: '818360871440',
    projectId: 'intico-1d09d',
    databaseURL: 'https://intico-1d09d-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'intico-1d09d.appspot.com',
    iosClientId: '818360871440-8s5g8186dvcen0d9ptgesora7dck6mgi.apps.googleusercontent.com',
    iosBundleId: 'com.example.inticoGlob',
  );
}
