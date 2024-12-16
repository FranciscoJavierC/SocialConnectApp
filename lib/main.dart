import 'package:flutter/material.dart';
import 'package:social_connect_app/utils/user_preferences.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(SocialConnectApp());
}

class SocialConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => CheckAuthScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class CheckAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _checkAuth(context);
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  }

  void _checkAuth(BuildContext context) async {
    final loggedIn = await UserPreferences.isLoggedIn();
    if (loggedIn) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }
}
