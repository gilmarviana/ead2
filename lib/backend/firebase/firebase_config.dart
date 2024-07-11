import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCX0Ge3Z69A1lSQsmkYrNuQjSM5U0ZBOo4",
            authDomain: "euvendo-99066.firebaseapp.com",
            projectId: "euvendo-99066",
            storageBucket: "euvendo-99066.appspot.com",
            messagingSenderId: "897496958677",
            appId: "1:897496958677:web:dc4d8abaf9eed8ba0d445c",
            measurementId: "G-BB8QMD9YK4"));
  } else {
    await Firebase.initializeApp();
  }
}
