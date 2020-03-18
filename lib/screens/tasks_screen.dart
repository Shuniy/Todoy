import 'package:flutter/material.dart';
import 'package:Todoy/widgets/tasks_list.dart';
import 'package:Todoy/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:Todoy/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple[700],
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )));
          }),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 9.0, left: 19.0, right: 29.0, bottom: 29.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 33.0,
                      color: Colors.deepPurple[700],
                    ),
                    backgroundColor: Colors.white,
                    radius: 33.0,
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  Text(
                    'Todoy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    ' ${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 19.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19.0),
                    topRight: Radius.circular(19.0),
                  ),
                ),
                child: TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
