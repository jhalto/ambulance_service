import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Speed extends StatelessWidget {
  const Speed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Speed is also an important factor when choosing an ambulance. Make sure you choose one that can reach high speeds quickly and safely.",style: TextStyle(color: Colors.black,fontSize: 16,),),
      ),
    );
  }
}
