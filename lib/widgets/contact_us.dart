

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import '../screen/call_now.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController _contactNameController = TextEditingController();
  TextEditingController _contactPhoneController = TextEditingController();
  TextEditingController _contactAddressController = TextEditingController();
  TextEditingController _contactEmailController = TextEditingController();
  TextEditingController _contactBloodController = TextEditingController();
  TextEditingController _contactGenderController = TextEditingController();
  TextEditingController _contactAgeController = TextEditingController();
  TextEditingController _contactAmbulanceController = TextEditingController();



 writeData() {



   CollectionReference _request= FirebaseFirestore.instance.collection('requests');
   _request.add({

       'contact_name': _contactNameController.text,
       'contact_phone': _contactPhoneController.text,
       'contact_address': _contactAddressController.text,
       'contact_email': _contactEmailController.text,
       'contact_blood': _contactBloodController.text,
       'contact_gender': _contactGenderController.text,
       'contact_age': _contactAgeController.text,
       'contact_ambulance': _contactAmbulanceController.text,

   });



 }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(

            gradient: LinearGradient(colors: [
              Colors.white12,
              Colors.white,
            ])
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text("Patient Requirement",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

                 const SizedBox(height: 20,),
                  TextField(
                    controller: _contactNameController,
                    decoration: InputDecoration(
                        hintText: "Enter name",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactPhoneController,
                    decoration: InputDecoration(
                        hintText: "Enter Phone Number",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactAddressController,
                    decoration: InputDecoration(
                        hintText: "Enter Address",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactEmailController,
                    decoration: InputDecoration(
                        hintText: "Enter Email",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactBloodController,
                    decoration: InputDecoration(
                        hintText: "Enter Blood Group",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                 
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactGenderController,
                    decoration: InputDecoration(
                        hintText: "Enter Gende",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactAgeController,
                    decoration: InputDecoration(
                        hintText: "Enter Age",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: _contactAmbulanceController,
                    decoration: InputDecoration(
                        hintText: "Enter Ambulance Type",
                        border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10))),

                  ),
                  const SizedBox(height: 10,),

                  MaterialButton(onPressed: (){

                    writeData();
                    Navigator.pop(context);
                  },color: Colors.blue,child: const Text("Send Request"),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
