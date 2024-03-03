import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Columnwidget extends StatefulWidget {
  const Columnwidget({super.key});
 

    @override
  _ColumnwidgetState createState() => _ColumnwidgetState();
}

class _ColumnwidgetState extends State<Columnwidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Widget'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color:Colors.black12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.orange,
            ),
             Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
             Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
    
  }
}

