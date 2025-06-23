import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/task_viewmodel.dart';
import 'package:flutter/material.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tasks = context.watch<TaskViewModel>().tasks;

    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(Icons.add_circle, color: Colors.red),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTaskScreen()
                  ),
                );
              },
            ),

          )
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Card(
            color: task.color,
            child: ListTile(
              title: Text(task.title, style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
              ),
              subtitle: Text(task.description,
                style: TextStyle(fontSize: 16),),
            ),
          );
        },
      ),
    );
  }
}
