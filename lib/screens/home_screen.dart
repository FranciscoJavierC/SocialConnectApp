import 'package:flutter/material.dart';
import 'package:social_connect_app/utils/user_preferences.dart';

class HomeScreen extends StatelessWidget {
  void handleLogout(BuildContext context) async {
    await UserPreferences.clearPreferences();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => handleLogout(context),
          ),
        ],
      ),
      body: Center(child: Text('Welcome to Social Connect!')),
    );
  }
}
