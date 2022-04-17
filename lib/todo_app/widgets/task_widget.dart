import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

import '../data/tasks_data.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
  TaskWidget(this.task, this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        subtitle: IconButton(
            onPressed: () {
              //task.deleteTask(tasksList);
              tasksList.remove(task);
            },
            icon: const Icon(Icons.delete)),
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
    );
  }
}





// onPressed: () {
// //delete task as index item
// task.deleteTask(task.allTasks[index]);
// },
