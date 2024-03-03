import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldwidget extends StatefulWidget{
  const TextFieldwidget({super.key});
  @override
  _TextFieldwidgetstate createState() => _TextFieldwidgetstate();


}

class _TextFieldwidgetstate extends State<TextFieldwidget>{
  String ?val=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Field Widget"),
      backgroundColor: Colors.amber,),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black,
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "enter email",
                  ),
                  onChanged: (value) => change(value),
                  
                ),
            ),
              
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.green,
                keyboardType: TextInputType.name,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "enter name",
                    
                  ),
              
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.red,
                keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)),
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: "enter password"
                    
                  ),
              
              ),
            ),
            Text("$val",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),)
          ],
        ),
      ),
    );
  }
  void change(String value){
    setState(() {
      val=value;
    });
  }
}