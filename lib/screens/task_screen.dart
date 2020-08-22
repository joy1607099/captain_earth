import 'package:captain_earth/screens/post_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:captain_earth/task_structure/task_brain.dart';
import 'package:captain_earth/components/rounded_button.dart';

TaskBrain taskBrain = TaskBrain();
class TaskScreen extends StatefulWidget {
  static const String id = 'task_screen';
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 8.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('images/mascot.png'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text('Captain Earth',
             style: TextStyle(
                fontFamily: 'NexaRustSlab',
                fontSize: 10.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
                letterSpacing: 2.5,
              ),
            ),
//            FlatButton(
//
//              onPressed: (){
//                Navigator.pop(context);
//              },
//              child:Icon(
//                Icons.arrow_back,
//              ),
//            ),
          ],

        ),

      ) ,
//      drawer: Drawer(
//        elevation: 16.0,
//        child: SafeArea(
//          child: ListView(
//            padding: EdgeInsets.zero,
//            children: <Widget>[
//              Container(
//                height: 80.0,
//                child: DrawerHeader(
//                    child: Text(
//                        'My details'
//                      ),
//                  decoration: BoxDecoration(
//                    color: Colors.teal,
//                    shape: BoxShape.rectangle,
//                  ),
//                ),
//              ),
//              ListTile(
//                title: Text('Leaderboard'),
//                dense: true,
//                onTap: (){
//                  Navigator.pop(context);
//                },
//              ),
//              ListTile(
//                title: Text('Standing'),
//                dense: true,
//                onTap: (){
//                  Navigator.pop(context);
//                },
//              ),
//
//            ],
//
//          ),
//        ),
//
//      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    taskBrain.getTask(),
                    style: TextStyle(
                      fontFamily: 'NexaRustSlab',
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Color(0xff7ed56f),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      taskBrain.getDescription(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Trade Gothic',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                        wordSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              RoundedButton(
                title: 'Let\'s Play',
                colour: Color(0xff28b485),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, PostScreen.id);
                  });
                },
              )],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
