import 'package:flutter/material.dart';

class Formvalidationcreateaccount extends StatefulWidget{
  const Formvalidationcreateaccount({super.key});
  
  @override
  State<Formvalidationcreateaccount> createState() =>  _Formvalidationcreateaccount();
}
class _Formvalidationcreateaccount extends State<Formvalidationcreateaccount>{
  TextEditingController _firstnamecontroller=new TextEditingController();
  TextEditingController _lastnamecontroller= new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordcontroller=new TextEditingController();
  TextEditingController _confirmpasswordcontroller=new TextEditingController();
  final _formkey=GlobalKey<FormState>();
  var firstregex=RegExp(r'^[a-z0-9]{3,30}[A-Z]?$');
  var lastregex=RegExp(r'^[a-z0-9A-Z]{3,8}?$');
  var passwordregex=RegExp(r'^[a-z]+@+[0-9]+[A-Z]?$');
  var confirmpasswordregex=RegExp(r'^[a-z]+@[0-9]+[A-Z]?$');
  var emailregex=RegExp(r'^[a-z]+[0-9]+[A-Z]?[@gmail.com]+$');
  bool password=true;
  bool confirm=true;
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
             Text("Firstname",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
             SizedBox(height: 10,),
             TextFormField(
             
              controller: _firstnamecontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter First name";
                }
                else if(!firstregex.hasMatch(value)){
                  return "Invalid firstname";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "firstname",
                suffixIcon: Icon(Icons.person_off_outlined),
              ),
              onChanged: (value) {

              },
              
            ),
            SizedBox(height: 18,),
             Text("Lastname",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
             SizedBox(height: 10,),
             TextFormField(
              
              controller: _lastnamecontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter lastname";
                }
                else if(!firstregex.hasMatch(value)){
                  return "Invalid firstname";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "lastname",
                suffixIcon: Icon(Icons.person_2_rounded),
              ),
              onChanged: (value) {

              },
              
            ),
            SizedBox(height: 18,),
            Text("Email Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
            SizedBox(height: 10,),
            TextFormField(
              controller: _emailcontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter email";
                }
                else if(!emailregex.hasMatch(value)){
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
              obscureText: password,
              controller: _passwordcontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter Password";
                }
                else if(!passwordregex.hasMatch(value)){
                  return "please enter correct password";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "Password",
                suffixIcon: GestureDetector(
                  onTap: (){
                    setState(() {
                      password=!password;
                    });
                    
                  },
                  child: password?Icon(Icons.visibility):Icon(Icons.visibility_off),
                )
              ),
              onChanged: (value) {

              },
              
            ),
            SizedBox(height: 18,),
             Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color.fromRGBO(41, 41, 48, 1)),),
             SizedBox(height: 10,),
             TextFormField(
              obscureText: confirm,
              controller: _confirmpasswordcontroller,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter ConfirmPassword";
                }
                else if(!confirmpasswordregex.hasMatch(value)){
                  return "enter correct password";
                }
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
                hintText: "Confirm Password",
                suffixIcon: GestureDetector(
                  onTap: (){
                    setState(() {
                      confirm=!confirm;
                    });
                    
                  },
                  child: confirm?Icon(Icons.visibility):Icon(Icons.visibility_off),
                )
              ),
              onChanged: (value) {

              },
              
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
                        Navigator.pop(context);
                      }
                      
                    },
                    child: Text("Login",style: TextStyle(color: Colors.white),) ,),
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
