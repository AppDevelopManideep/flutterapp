import 'package:flutter/material.dart';

class Login extends StatefulWidget{
 const Login({super.key});
 
  @override
  State<Login> createState() => _LoginState();
  
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 72,),
            Text("Welcome Back",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color:Color.fromRGBO(41,41,48,1)),
            ),
            SizedBox(height: 12,),
            Text("Welcome back. enter your credentials to access your account ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Color.fromRGBO(138, 144, 162, 1)),),
            SizedBox(height: 24,),
            Text("Email Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "hello@example.com"
                
              ),
              onChanged: (value) {

              },
              
            ),
            SizedBox(height: 18,),
             Text("Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
             SizedBox(height: 10,),
             TextFormField(
              obscureText: true,
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
                Text("Forgot Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(27, 84, 245, 1)),),
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
                    onPressed: (){},
                    child: Text("Login",style: TextStyle(color: Colors.white),) ,),
                ),
              ],
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New Here?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(41,41,48, 1)),),
                TextButton(onPressed: (){}, 
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
    );
  }

}