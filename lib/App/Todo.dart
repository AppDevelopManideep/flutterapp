import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Todo extends StatefulWidget{
  Todo({super.key});
  
  @override
  State<Todo> createState()=> _Todo();
  
}
class _Todo extends State<Todo>{
  List<String>? task ;
  TextEditingController _textfield = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Row(
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              cursorColor: Colors.black12,
              controller: _textfield,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),

                ),
              ),
             onChanged: (value) {
               
             },
            ),
            SizedBox(width: 20,),
            TextButton(onPressed: (){
              action();
            }, 
            child: Text("Add"))
          ],

        ),
        Expanded(
          child: ListView.builder(
            itemCount: task?.length,
            itemBuilder: (context, index) {
              if(task?.length==0){
                return Container(
                  margin: EdgeInsets.all(25),
                  child: Text("No Task Assigned"),
                );
              }
              else{
                return Container(
                  margin: EdgeInsets.all(25),
                  child: Text(task![index]),
                );
              }
            },
          ),
        )
      ],)
    );
  }
  void action(){
    setState(() {
      task?.add(_textfield as String);
      _textfield.clear();
    });
  }

}