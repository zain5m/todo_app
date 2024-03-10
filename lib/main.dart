import 'package:flutter/material.dart';
import 'package:todo_tesk/app/ui/todo_app.dart';
import 'package:todo_tesk/core/config/app_initializer.dart';

void main() async {
  await AppInitializer.init();
  runApp(const TodoApp());
}
