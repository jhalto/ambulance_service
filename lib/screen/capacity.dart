import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Capacity extends StatelessWidget {
  const Capacity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("Another important consideration is the ambulance’s capacity. Make sure you know how many patients the ambulance can transport at once and whether it has enough room for additional equipment or medical personnel.",style: TextStyle(color: Colors.black,fontSize: 16,),),
      ),
    );
  }
}
