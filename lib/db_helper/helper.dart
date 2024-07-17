


import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../sign/sign_in.dart';
import '../widgets/contact_view.dart';


class MyHelper{
  Future signUp(email,password,context)async{
     try {
   final credential=   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
     if(credential.user!.uid.isNotEmpty){
       Navigator.push(context,MaterialPageRoute(builder: (context)=>const SignIn()));
     }

     else{
       print("Not Valid");
     }
     } on FirebaseAuthException catch(e){
       if (e.code == 'weak-password') {
         print('The password provided is too weak.');
       } else if (e.code == 'email-already-in-use') {
         print('The account already exists for that email.');
       }
     }
}
  Future signIn(email,password,context)async{
    try {
      final credential=   await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      if(credential.user!.uid.isNotEmpty){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>const ContactView()));
      }

      else{
        print("Not Valid");
      }
    } on FirebaseAuthException catch(e){
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

}
