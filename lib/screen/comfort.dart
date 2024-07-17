import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comfort extends StatelessWidget {
  const Comfort({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("The first factor to consider is comfort. Make sure you choose an ambulance that is comfortable to ride in, especially if you will be transporting a patient for long periods of time.",style: TextStyle(color: Colors.black,fontSize: 16,),),
      ),
    );
  }
}
