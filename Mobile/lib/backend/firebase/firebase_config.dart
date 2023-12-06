import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0wzklzQGKXyn_3NcaycL5nvLdvdZWiDw",
            authDomain: "erecycle-a6e80.firebaseapp.com",
            projectId: "erecycle-a6e80",
            storageBucket: "erecycle-a6e80.appspot.com",
            messagingSenderId: "172415396358",
            appId: "1:172415396358:web:4aa76f599853701a2fb187",
            measurementId: "G-YHQTPBV0Q1"));
  } else {
    await Firebase.initializeApp();
  }
}
