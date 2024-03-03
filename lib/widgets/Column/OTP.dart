import 'package:flutter/material.dart';

class OTP extends StatefulWidget{
  const OTP({super.key});
  
  @override
  State<OTP> createState() => _OTPState();
  
}
class _OTPState extends State<OTP>{
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
            Text("OTP VERIFICATION",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color:Color.fromRGBO(41,41,48,1)),
            ),
            SizedBox(height: 12,),
            Text("Enter the authentication code sent to your mail address hello@example.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color:Color.fromRGBO(138,144,162,1)),
            ),
          ]
        ),
      ),
    );
      
            
  }

}