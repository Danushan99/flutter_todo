
import 'package:error/views/add_page.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      floatingActionButton:
          FloatingActionButton.extended(onPressed: navigateToAddTodo, label: Text(("Add Todo"))),
    );
  }
  void navigateToAddTodo(){
    final route = MaterialPageRoute(builder: (context) =>AddTodoPage (),);
  Navigator.push(context, route);
  }
}


