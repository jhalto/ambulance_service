import 'package:flutter/material.dart';

import '../widgets/contact_us.dart';



class CallNow extends StatelessWidget {
  const CallNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('lib/images/Picture1.jpg',height: 100,width: 100,),
        actions: [
          MaterialButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CallNow()));
          },color: Colors.deepOrangeAccent,child: const Text("Call Now"),),
          const SizedBox(width: 10),
          MaterialButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ContactUs()));
          },color: Colors.deepOrangeAccent,child: const Text("Book us"),),
          const SizedBox(width: 10,),

        ],
      ),
      body: Column(
        children: [
          Image.asset("lib/images/service_contact.png"),
          const SizedBox(height: 50),
          const Text("01637448834",style: TextStyle(color: Colors.red,fontSize: 40),),
        ],
      ),
    );
  }
}
