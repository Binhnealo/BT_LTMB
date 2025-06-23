import 'package:flutter/material.dart';
import '../models/task_model.dart';
import 'dart:math';

class TaskViewModel extends ChangeNotifier {
  final List<Task> _tasks = [
    Task('Complete Android Project', 'Finish the UI, integrate API, and write documentation', Colors.blue.shade100),
    Task('Complete Android Project', 'Finish the UI, integrate API, and write documentation', Colors.red.shade100),
    Task('Complete Android Project', 'Finish the UI, integrate API, and write documentation', Colors.green.shade100),
    Task('Complete Android Project', 'Finish the UI, integrate API, and write documentation', Colors.orange.shade100),
  ];

  List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    final random = Random();

    // Danh sách các màu bạn muốn sử dụng
    final colors = [
      Colors.red.shade100,
      Colors.orange.shade100,
      Colors.green.shade100,
      Colors.blue.shade100,
    ];

    final randomColor = colors[random.nextInt(colors.length)];

    _tasks.add(Task(title, description, randomColor));
    notifyListeners();
  }
}
