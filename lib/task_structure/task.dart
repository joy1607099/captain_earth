import 'package:flutter/cupertino.dart';

class Task {

  String taskId;
  int points;
  String taskTitle;
  String description;


  Task({@required this.taskId,@required this.points,@required this.taskTitle, @required this.description});
}