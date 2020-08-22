import 'task.dart';

class TaskBrain {
  int _taskNumber = 0;
  List<Task> _taskData = [
    Task(
        taskId: '1',
        points: 500,
        taskTitle: 'Act of Love',
        description:
        'Express your gratitude or love as written message to your Brother/sister or parent/grandparent'
            ' or relative or someone made a positive  impact in your life.'


    ),

    Task(
        taskId: '2',
        points: 2500,
        taskTitle: 'Act of Love',
        description: 'Spend whole day at foster care.Proof:by post(pic or video) or confirmation by foster care authority'

    ),
    Task(
        taskId: '3',
        points: 600,
        taskTitle: 'Good will',
        description: 'Complete a book in 7 days'

    ),
  ];
  String getTask(){
    return _taskData[_taskNumber].taskTitle;
  }
  String getId() {
    return _taskData[_taskNumber].taskId;
  }
  int getPoints() {
    return _taskData[_taskNumber].points;
  }
  String getDescription() {
    return _taskData[_taskNumber].description;
  }
  void nextTask() {
    if (_taskNumber <2) {
      _taskNumber+=1;
    }
    else if (_taskNumber ==2) {
      restart();
    }
  }

  void restart() {
    _taskNumber= 0;
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_taskNumber == 0 || _taskNumber == 1 ) {
      return true;
    } else {
      return false;
    }
  }


}