import 'package:Todoy/screens/add_task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Todoy/widgets/tasks_list.dart';
import 'package:Todoy/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen()));
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 19, bottom: 29, left: 19, right: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 33,
                      color: Colors.deepPurple,
                    ),
                    backgroundColor: Colors.white,
                    radius: 33,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    "Todoy",
                    style: TextStyle(
                        fontSize: 39,
                        fontFamily: "FiraCode",
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Text(
                    " 12 Tasks",
                    style: TextStyle(
                        fontFamily: "FiraCode",
                        fontSize: 19,
                        color: Colors.white),
                  ),
                  SizedBox(height: 9),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 19),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
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
