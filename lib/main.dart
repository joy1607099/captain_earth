import 'package:flutter/material.dart';
import 'screens/intro_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'package:captain_earth/screens/intro_screen.dart';
import 'package:captain_earth/screens/task_screen.dart';
import 'screens/leaderboard_screen.dart';
import 'screens/myProfie_screen.dart';
import 'screens/newsfeed_screen.dart';
import 'screens/post_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff28b485),

      ),

      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id :(context) => IntroScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        TaskScreen.id : (context) => TaskScreen(),
        LeaderboardScreen.id :(context) => LeaderboardScreen(),
        MyProfileScreen.id : (context) => MyProfileScreen(),
        NewsFeedScreen.id : (context) => NewsFeedScreen(),
        PostScreen.id :(context) => PostScreen(),

      },

    );
  }
}