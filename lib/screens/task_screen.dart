import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 30, bottom: 30, left: 19, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 35,
                      color: Colors.deepPurple,
                    ),
                    backgroundColor: Colors.white,
                    radius: 35,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    "Todoy",
                    style: TextStyle(
                        fontSize: 39,
                        fontFamily: "FiraCode",
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Text(
                    " 12 Tasks",
                    style: TextStyle(fontFamily: "FiraCode", fontSize: 19),
                  ),
                  SizedBox(height: 9),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19),
                    topRight: Radius.circular(19),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
