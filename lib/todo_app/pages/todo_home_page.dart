import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';
import 'package:state_managment/todo_app/pages/all_tasks.dart';
import 'package:state_managment/todo_app/pages/complete_tasks.dart';
import 'package:state_managment/todo_app/pages/incomplete_tasks.dart';

class TodoHomePage extends StatefulWidget {
  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todo App'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.list),
                ),
                Tab(
                  icon: Icon(Icons.done),
                ),
                Tab(
                  icon: Icon(Icons.cancel),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            AllTasksScreen(),
            CompleteTasksScreen(),
            InCompleteTasksScreen()
          ]),
        ));
  }
}
