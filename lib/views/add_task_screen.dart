import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/task_viewmodel.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();

  void _submit() {
    final title = _titleController.text;
    final desc = _descController.text;

    if (title.isNotEmpty && desc.isNotEmpty) {
      context.read<TaskViewModel>().addTask(title, desc);
      _titleController.clear();
      _descController.clear();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Task added")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Add New',
      style: TextStyle(
        color: Color(0xFF2196F3),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      )
    )
        ,
      centerTitle: true,
      ),


      body: Padding(
        padding:  EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 16),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Task',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _descController,
              decoration: InputDecoration(labelText: 'Description',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submit,
              child: Text('Add',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2196F3),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
