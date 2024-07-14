import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return android;
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVVGWdTgDo47wgsQJgQGUQv6cHtiyemBA',
    appId: '1:35290641138:android:7566e6b22b6c6dddb7566b',
    projectId: 'chat-d9023',
    messagingSenderId: '35290641138',
    storageBucket: 'chat-d9023.appspot.com',
  );
}
