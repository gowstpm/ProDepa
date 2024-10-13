import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/welcome_screen.dart'; // Ensure this path is correct
import 'package:google_fonts/google_fonts.dart'; // Add this import

// Your web app's Firebase configuration
const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyDJi-6kyxJR_G11tiwUrBY-GwpyOkMZoOM",
  authDomain: "prodepa-c7fc6.firebaseapp.com",
  projectId: "prodepa-c7fc6",
  storageBucket: "prodepa-c7fc6.appspot.com",
  messagingSenderId: "654118995970",
  appId: "1:654118995970:web:908e94e956b8a163a6bf1b",
  measurementId: "G-HXYH0DCJB1",
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase with the options
  await Firebase.initializeApp(options: firebaseOptions);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: WelcomeScreen(),
    );
  }
}
