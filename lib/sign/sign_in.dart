
import 'package:ambulance_service/sign/sign_up.dart';
import 'package:flutter/material.dart';

import '../db_helper/helper.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController1 = TextEditingController();
  final TextEditingController _passwordController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,

        appBar: AppBar(title: Text("Sign in"),centerTitle: true,backgroundColor: Colors.redAccent,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(

            children: [
              SizedBox(height: 30,),
              Text("To Access as admin"),
              Text("Plese Sign in"),
              SizedBox(height: 150),
              TextField(
                controller: _emailController1,
                decoration: InputDecoration(

                    hintText: "Please Enter Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                obscureText: true,
                controller: _passwordController1,
                decoration: InputDecoration(
                    hintText: "Please Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              const SizedBox(height: 10,),

              const SizedBox(height: 10,),
              MaterialButton(onPressed: (){

                var e= _emailController1.text;
                var p= _passwordController1.text;
                var obj = MyHelper().signIn(e, p, context);

              }, child: const Text("Sign in",),color: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
              const SizedBox(height: 10,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUp()));
              }, child: const Text("Not registered? Click here"),)


            ],
          ),
        ),
      ),
    );
  }
}
