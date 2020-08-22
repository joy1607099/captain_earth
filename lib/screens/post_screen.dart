import 'package:flutter/material.dart';
import 'package:captain_earth/task_structure/task_brain.dart';
import 'package:captain_earth/constants.dart';

TaskBrain taskBrain = TaskBrain();
class PostScreen extends StatefulWidget {
//  PostScreen(this.dp,this.name,this.time,this.img);
  static const String id = 'post_screen';
//  final String dp;
//  final String name;
//  final String time;
//  final String img;

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  int _selectedIndex = 0;
  String caption;
  final myCaptionController = TextEditingController();

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



//  final myPasswordController = TextEditingController();
  @override
  void dispose() {
    myCaptionController.dispose();
//    myPasswordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28b485),
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
                fontFamily: 'Trade Gothic',
                fontSize: 20.0,
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
      body: Container(

//          decoration: BoxDecoration(
//            image: DecorationImage(
//              image: AssetImage('images/background.png'),
//              fit: BoxFit.cover,
//            ),
//          ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff7ed56f),
              ),
              child: Text(
                'Post your good work here ',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'NexaRustSlab',
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900,

                  color: Colors.black,
                ),
              ),
            ),
            TextField(
              controller: myCaptionController,
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                caption = value;
              },
              decoration:
              kTextFieldDecoration.copyWith(
                hintText: 'Write how did you complete your task',
                fillColor: Color(0xff28b485),
                hoverColor:  Color(0xff28b485),
                focusColor:  Color(0xff28b485),
              ),
            ),

//              ListTile(
//                leading: CircleAvatar(
//                  backgroundImage: AssetImage(
//                    'images/mascot.png',
//                  ),
//                ),
//                contentPadding: EdgeInsets.all(0),
//                title: Text(
//                  'Hi',
//                  style: TextStyle(
//                    fontWeight: FontWeight.bold,
//                  ),
//                ),
//                trailing: Text(
//                  'I am joy',
//                  style: TextStyle(
//                    fontWeight: FontWeight.w300,
//                    fontSize: 11,
//                  ),
//                ),
//              ),
//              Image.asset(
//                'images/cool.jpg',
//                height: 170,
//                width: MediaQuery.of(context).size.width,
//                fit: BoxFit.cover,
//              ),
          ],
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
