import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBkPjjfmTXFGGZefzwVJLkWRNMcUf6N9VQ",
            authDomain: "ascend-aafr3r.firebaseapp.com",
            projectId: "ascend-aafr3r",
            storageBucket: "ascend-aafr3r.firebasestorage.app",
            messagingSenderId: "125098535645",
            appId: "1:125098535645:web:28e385ee153abb66460934",
            measurementId: "G-BP26FEEBS7"));
  } else {
    await Firebase.initializeApp();
  }
}
