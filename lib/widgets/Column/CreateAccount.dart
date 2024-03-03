import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateAccount extends StatefulWidget{
  const CreateAccount({super.key});
  @override
  State<CreateAccount> createState() => _CreateAccount();
  
}
class _CreateAccount extends State<CreateAccount>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 72,),
            Text("Let's Get Started",style:TextStyle(fontSize: 32,fontWeight: FontWeight.w600)),
            SizedBox(height: 42,),
            Text("Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "Name",
                  hintStyle: TextStyle()
              ),
            ),
            SizedBox(height:18),
            Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "Name",
                  hintStyle: TextStyle()
              ),
            ),
            SizedBox(height: 18,),
            Text("Email Address",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "hello@example.com",
                  hintStyle: TextStyle()
              ),
            ),
            SizedBox(height: 18,),
            Text("Batch Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
            SizedBox(height: 6,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)),
                  hintText: "Batch Number",
                  hintStyle: TextStyle()
              ),
            ),
            SizedBox(height: 18,),
            Text("Set Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
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
                 // color: Color.fromRGBO(89, 86, 233, 1),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(27, 84, 245, 1),
                    borderRadius: BorderRadius.circular(100)
                  ),
                   child: TextButton(
                   onPressed: () {  
                    Navigator.pop(context);
                   },
                   child: Text("Create Account",style: TextStyle(color: Colors.white),),),
                 ),
               ],
             ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                TextButton(onPressed: (){}, 
                child: Text("Sign In",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color.fromRGBO(89,86,233,1)),))
              ],
            )

          ],),
      )
     )
    );
  }

}