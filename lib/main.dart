import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../controllers/user.dart';
import '../firebase_options.dart';
import '../pages/home.dart';
import '../pages/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepOrange,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: UserController.user != null ? const HomePage() : const LoginPage(),
    );
  }
}
