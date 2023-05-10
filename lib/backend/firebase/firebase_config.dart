import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOt3SUFAKbRiYjU2XrIrW-cwg-Yi2QLb4",
            authDomain: "ai-toolkit-4f027.firebaseapp.com",
            projectId: "ai-toolkit-4f027",
            storageBucket: "ai-toolkit-4f027.appspot.com",
            messagingSenderId: "381823908857",
            appId: "1:381823908857:web:6f81941839af735fe9db28",
            measurementId: "G-90L8CKQEGS"));
  } else {
    await Firebase.initializeApp();
  }
}
