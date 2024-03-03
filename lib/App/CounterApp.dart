import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterApp extends StatefulWidget{
  const CounterApp({super.key});
  
  @override
  State<CounterApp> createState() => _CounterApp();
  
}
class _CounterApp extends State<CounterApp>{
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                increment();
            }, 
            child: Text("+",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)),
            Text("The Count is $counter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
            TextButton(
              onPressed: (){
                decrement();
            }, 
            child: Text("-",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),)),
          ],
        ),
      ),
    );
  }

  
  void increment(){
  setState(() {
      counter = counter + 1;
    });

}
void decrement(){
 
  setState((){
    counter=counter-1;
  });
}

}
