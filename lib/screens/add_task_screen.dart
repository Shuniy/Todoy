import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(19),
            topLeft: Radius.circular(19),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 9,
            ),
            Text(
              "Add Task",
              style: TextStyle(
                  fontSize: 29,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w900),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 19.0, left: 39, right: 39, bottom: 19),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.deepPurple,
              ),
            ),
            RaisedButton(
              elevation: 3,
              color: Colors.deepPurple,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(19.0),
                  side: BorderSide(color: Colors.deepPurple)),
              child: Text(
                "Add",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
