import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBRsJ0qosYHxMGm9SuStp4fggKRJ2drPS8",
            authDomain: "wallpaper-4903.firebaseapp.com",
            projectId: "wallpaper-4903",
            storageBucket: "wallpaper-4903.appspot.com",
            messagingSenderId: "820192665251",
            appId: "1:820192665251:web:7d016f90220bc5e9592916",
            measurementId: "G-4GRGN0DND4"));
  } else {
    await Firebase.initializeApp();
  }
}
