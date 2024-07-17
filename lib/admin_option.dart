
import 'package:ambulance_service/widgets/contact_view.dart';
import 'package:ambulance_service/widgets/driver_list.dart';
import 'package:flutter/material.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({Key? key}) : super(key: key);

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,title: const Text("User"),backgroundColor: Colors.blueAccent),
        body: Center(
          child: Column(
            children: [

              const SizedBox(height: 300,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const ContactView()));
              },child: const Text("Requests"),color: Colors.deepOrangeAccent,),
              const SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const DriverList()));
              },child: const Text("Driver"),color: Colors.deepOrangeAccent,),
            ],
          ),
        ),
      ),
    );
  }
}
