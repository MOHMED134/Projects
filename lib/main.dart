import 'package:firebase_core/firebase_core.dart';
import 'package:firebaselearning/pages/Chat_page.dart';
import 'package:firebaselearning/pages/Register_Page.dart';
import 'package:firebaselearning/pages/loginpage.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id:(context) => ChatPage(),
        Loginpage.id: (context) => Loginpage(),
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Loginpage.id,
    );
  }
}
