
import 'package:flutter/material.dart';
import 'package:todoapp/TodoPageView.dart';

class TodoPage extends StatefulWidget {
  @override
  TodoPageView createState() => new TodoPageView();
}

abstract class TodoPageState extends State<TodoPage> {
  @protected
  List<String> todos = new List<String>();

  TextEditingController textcontroller = new TextEditingController();

  void addTodo(text) {
    setState(() => todos.add(text));
    textcontroller.clear();
  }

  void removeTodo(index) {
    setState(() => todos.removeAt(index));
  }
}