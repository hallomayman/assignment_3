import '../data/tasks_data.dart';

class Task {
  String title;
  bool isCompleted;
Task(this.title,[this.isCompleted=false]);

  void deleteTask(task) {
    for (final index in task)
    tasksList.remove(index);

  }
}
