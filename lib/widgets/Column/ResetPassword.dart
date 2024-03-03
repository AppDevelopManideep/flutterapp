import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget{
  const ResetPassword({super.key});
  
  @override
  State<ResetPassword> createState()=> _ResetPasswordState();
}
class _ResetPasswordState extends State<ResetPassword>{
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
            SizedBox(height: 126,),
            Text("Reset Password?",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color:Color.fromRGBO(41,41,48,1)),
            ),
            SizedBox(height: 12,),
            Text("Set New Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "6+ Characters,1 Capital letter",
                  hintStyle: TextStyle(),
                  suffixIcon: Icon(Icons.visibility)
              ),
            ),
            SizedBox(height: 24,),
            Text("Confirm Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "6+ Characters,1 Capital letter",
                  hintStyle: TextStyle(),
                  suffixIcon: Icon(Icons.visibility)
              ),
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
                    onPressed: (){},
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