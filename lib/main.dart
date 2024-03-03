import 'package:flutter/material.dart';
import 'package:flutterapp/App/CounterApp.dart';
import 'package:flutterapp/App/FormvalidationLogin.dart';
import 'package:flutterapp/App/Formvalidationcreateaccount.dart';
import 'package:flutterapp/App/Todo.dart';
import 'package:flutterapp/widgets/Column/CreateAccount.dart';
import 'package:flutterapp/widgets/Column/ForgotPassword.dart';
import 'package:flutterapp/widgets/Column/Listview.dart';
import 'package:flutterapp/widgets/Column/ListviewBuilder.dart';
import 'package:flutterapp/widgets/Column/Login.dart';
import 'package:flutterapp/widgets/Column/OTP.dart';
import 'package:flutterapp/widgets/Column/ResetPassword.dart';
import 'package:flutterapp/widgets/Column/TextFieldwidget.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: "/todo",
    routes: {
      "/login":(context) => Login(),
      "/createaccount":(context)=> CreateAccount(),
      "/forgotpassword":(context) => ForgotPassword(),
      "/resetpassword":(context) => ResetPassword(),
      "/otp":(context) => OTP(),
      "/counter":(context) => CounterApp(),
      "/textfield":(context) => TextFieldwidget(),
      "/formvalidation":(context) => FormvalidationLogin(),
      "/formvalidationcreateaccount":(context) => Formvalidationcreateaccount(),
      "/listview":(context) => Listview(),
      "/listviewbuilder":(context) => ListviewBuilder(),
      "/todo":(context) => Todo()
    },
  ));
}

