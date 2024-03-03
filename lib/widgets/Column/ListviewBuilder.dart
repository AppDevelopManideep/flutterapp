import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListviewBuilder extends StatefulWidget{
  ListviewBuilder({super.key});
  
  @override
  State<ListviewBuilder> createState() => _ListviewBuilder();
  
}
class _ListviewBuilder extends State<ListviewBuilder>{
  List<String> name=["mani","ram","hari","vishu"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:ListView.builder(
      itemCount:name.length ,
      itemBuilder: (context,index){
        return Container(
          color: Colors.amber,
          margin: EdgeInsets.all(10),
          child: Text(name[index]),
        );
      },
    )
   );
  }

}