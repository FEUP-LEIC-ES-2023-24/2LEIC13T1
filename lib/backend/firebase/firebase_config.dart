import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0OE3KfHjgO3Ym3N62kXn7RmovMn8qvc8",
            authDomain: "martechplace-u06ng2.firebaseapp.com",
            projectId: "martechplace-u06ng2",
            storageBucket: "martechplace-u06ng2.appspot.com",
            messagingSenderId: "762042413580",
            appId: "1:762042413580:web:c9940bbffc9ffaae913429"));
  } else {
    await Firebase.initializeApp();
  }
}
