import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Finally, make sure you consider the price of the ambulance before making a decision. There are a number of affordable options available, but don’t forget about quality either – some lower-cost ambulances may not be as reliable as higher-priced models.",style: TextStyle(color: Colors.black,fontSize: 16,),),
      ),
    );
  }
}
