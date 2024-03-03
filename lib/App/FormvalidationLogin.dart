import 'dart:core';

import 'package:flutter/material.dart';

class FormvalidationLogin extends StatefulWidget{
 const FormvalidationLogin({super.key});
 
  @override
  State<FormvalidationLogin> createState() => _FormvalidationLoginState();
  
}

class _FormvalidationLoginState extends State<FormvalidationLogin>{
  final _formkey=GlobalKey<FormState>();
  var regex=RegExp(r'^[a-z]+[0-9]+[A-Z]?[@gmail.com]+$');
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
       child:SingleChildScrollView(
       
        child: Form(
          key: _formkey,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 72,),
            Text("Welcome Back",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color:Color.fromRGBO(41,41,48,1)),
            ),
            SizedBox(height: 12,),
            Text("Welcome back. enter your credentials to access your account ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Color.fromRGBO(138, 144, 162, 1)),),
            SizedBox(height: 24,),
            Image.asset("images/bodysensors.png",height: 100,width: 100,),
            SizedBox(height: 24,),
            Text("Email Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
            SizedBox(height: 10,),
            TextFormField(
              controller: _emailcontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter email";
                }
                else if(!regex.hasMatch(value)){
                  return "gmail should contain atleast one @gmail";
                }
                
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "hello@example.com"
                
              ),
              
              
            ),
            SizedBox(height: 18,),
             Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
             SizedBox(height: 10,),
             TextFormField(
              obscureText: true,
              controller: _passwordcontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter Password";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "Password",
                suffixIcon: Icon(Icons.visibility),
              ),
              onChanged: (value) {

              },
              
            ),
            SizedBox(height: 6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/forgotpassword");
                  },
                  child: Text("Forgot Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(27, 84, 245, 1)),),
                )
                
              ],
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(27, 84, 245, 1)
                  ),
                  child: TextButton(
                    onPressed: (){
                      if(loginaction()){
                        Navigator.pushNamed(context, "/otp");
                      }
                      
                    },
                    child: Text("Login",style: TextStyle(color: Colors.white),) ,),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New Here?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(41,41,48, 1)),),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, "/formvalidationcreateaccount");
                }, 
                child: Text("create account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(27, 84, 245, 1)),))
              ],
            ),
            SizedBox(height: 72,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    
                    //color: Color.fromRGBO(27, 84, 245, 1)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text("Book A Demo",style: TextStyle(color: Color.fromRGBO(27, 84, 245, 1)),) ,),
                ),
          ],
        ),
          ]
      ),
      ),
      ),
      ),
    );
  }
  bool loginaction(){
    bool status=_formkey.currentState!.validate();
    return status;
  }

}