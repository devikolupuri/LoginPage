// ignore: file_names
// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'LoginForm.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  void loginClick() {
    _formKey.currentState!.validate() ? print('got details of the login credentials') : print('please fill required fields');
  }

  passwordOnChange(String value) {
    value.isNotEmpty ? print('you got password') : print('please provide password');
  }
  //the passwordOnChange is empty please provide the password are else if it is not empty it will be printed as you got a password.
  void emailOnChanged(String value) {
     value.isNotEmpty ? print('you got email') : print('please provide email');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: const Color.fromARGB(255, 42, 19, 214),
          height: double.infinity,
          width: double.infinity,
        ),
        Positioned(top: MediaQuery.of(context).size.height * 0.3,
        left: 0,
        right: 0,
        child: const Center(
          child:  Text('LOTO',style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),),
        ),
         ),
        Positioned(top: MediaQuery.of(context).size.height * 0.5 , left:0, right:0,child: Container(height: MediaQuery.of(context).size.height/2,decoration: const BoxDecoration(borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),color: Colors.white ),
                  child:LoginForm(formKey: _formKey, emailOnChanged: emailOnChanged, loginClick: loginClick, passwordOnChange: passwordOnChange,),))
      ],)
    );
  }
}