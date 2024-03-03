import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listview extends StatefulWidget{
  Listview({super.key});
  
  @override
  State<Listview> createState()=> _Listview();
}
class _Listview extends State<Listview>{
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