import 'package:crewchat/screens/chat_screen.dart';
import 'package:crewchat/screens/chat_screen2.dart';
import 'package:crewchat/screens/login_screen.dart';
import 'package:crewchat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:crewchat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.black54),
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegistrationScreen(),
          '/chat': (context) => ChatKaro(),
        });
  }
}
