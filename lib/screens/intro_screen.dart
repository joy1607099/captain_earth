import 'package:captain_earth/screens/login_screen.dart';
import 'package:captain_earth/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:captain_earth/components/rounded_button.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
import 'package:firebase_auth/firebase_auth.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'into_screen';
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> with SingleTickerProviderStateMixin {

  final _auth = FirebaseAuth.instance;
  AnimationController controller;
  Animation animation;

  void _signInFacebook() async{
    FacebookLogin facebookLogin = FacebookLogin();
    final result = await facebookLogin.logIn(['email']);
    final token = result.accessToken.token;
    final graphResponse = await http.get(
        'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    final profile = JSON.jsonDecode(graphResponse.body);
    print(graphResponse.body);
    if(result.status == FacebookLoginStatus.loggedIn){
      final credential = FacebookAuthProvider.getCredential(accessToken: token);
      _auth.signInWithCredential(credential);
      Navigator.pushNamed(context,LoginScreen.id );
    }
  }

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = ColorTween(begin: Colors.tealAccent, end: Colors.teal)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 150.0),
              child: Center(
                  child: TypewriterAnimatedTextKit(
                    speed: Duration(milliseconds: 500),
                    repeatForever: true, //this will ignore [totalRepeatCount]
                    pause: Duration(milliseconds:  1000),
                    text: ['Captain Earth'],
                    textStyle: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 50.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2.5,
                    ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Hero(
              tag: 'logo',
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/ninja.png'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Be the change',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pushNamed(context,LoginScreen.id );
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
            RoundedButton(
              title:'Sign in with Facebook',
              colour: Colors.blueGrey,
              onPressed: () {
                _signInFacebook();
//                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],

        ),
      ),
    );
  }
}
