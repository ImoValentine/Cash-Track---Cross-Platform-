import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCG8kADlgyjVXZ1oawuNXZH_N2yF63DV6A",
            authDomain: "loginpage-7d6b3.firebaseapp.com",
            projectId: "loginpage-7d6b3",
            storageBucket: "loginpage-7d6b3.appspot.com",
            messagingSenderId: "907833501020",
            appId: "1:907833501020:web:7fc3b8a84d745f6fd78d99",
            measurementId: "G-EXKS8NZRS8"));
  } else {
    await Firebase.initializeApp();
  }
}
