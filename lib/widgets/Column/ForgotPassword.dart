import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget{
  const ForgotPassword({super.key});
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();

}
class _ForgotPasswordState extends State<ForgotPassword>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 126,),
            Text("Forgot Password?",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color:Color.fromRGBO(41,41,48,1)),
            ),
            SizedBox(height: 12,),
            Text("Enter the email associated with your account and we will send an authentication code to reset you password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Color.fromRGBO(138,144,162,1)),
            ),
            SizedBox(height: 12,),
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
            SizedBox(height: 24,),
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
                      Navigator.pushNamed(context, "/resetpassword");
                    },
                    child: Text("Submit",style: TextStyle(color: Colors.white),) ,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}