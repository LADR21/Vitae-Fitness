import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyD4EDXVLQWVlYSm6kDtcndxxxfOCKIy6Nc",
            authDomain: "vitaefitness-5013f.firebaseapp.com",
            projectId: "vitaefitness-5013f",
            storageBucket: "vitaefitness-5013f.appspot.com",
            messagingSenderId: "1015398982385",
            appId: "1:1015398982385:web:01a761862a62a30aac7f50",
            measurementId: "G-XENQC1ZEZF"));
  } else {
    await Firebase.initializeApp();
  }
}
