import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class New extends StatefulWidget{
  New({super.key});
  
  @override
  State<New> createState()=> _New();
}
class _New extends State<New>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        height: 200,
        width: 200,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              
              child: Text("hi"),
              color: Colors.amberAccent,
            ),
             Container(
              margin: EdgeInsets.all(20),
              
              child: Text("hi"),
              color: Colors.blue,
            ),
             Container(
              margin: EdgeInsets.all(20),
              child: Text("hi"),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }

}