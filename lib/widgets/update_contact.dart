

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class UpdateContact extends StatefulWidget {
  String? documentId;
  String? contactName;
  String? contactPhone;
  String? contactAddress;
  String? contactEmail;
  String? contactBlood;
  String? contactGender;
  String? contactAge;
  String? contactAmbulance;

  UpdateContact( { super.key,this.documentId,this.contactName,this.contactPhone,this.contactAddress,this.contactEmail,this.contactBlood,this.contactGender,this.contactAge,this.contactAmbulance});

  @override
  State<UpdateContact> createState() => _UpdateContactState();
}

class _UpdateContactState extends State<UpdateContact> {
  TextEditingController _updateContactNameController = TextEditingController();
  TextEditingController _updateContactPhoneController = TextEditingController();
  TextEditingController _updateContactAddressController = TextEditingController();
  TextEditingController _updateContactEmailController = TextEditingController();
  TextEditingController _updateContactBloodController = TextEditingController();
  TextEditingController _updateContactGenderController = TextEditingController();
  TextEditingController _updateContactAgeController = TextEditingController();
  TextEditingController _updateContactAmbulanceController = TextEditingController();

  String? _requestAddress;

 updateData(selectedDocumentId) async{


if(_requestAddress==null) {
  CollectionReference _request = FirebaseFirestore.instance.collection(
      'requests');
  _request.doc(selectedDocumentId).update({

    'contact_name': _updateContactNameController.text,
    'contact_phone': _updateContactPhoneController.text,
    'contact_address': _updateContactAddressController.text,
    'contact_email': _updateContactEmailController.text,
    'contact_blood': _updateContactBloodController.text,
    'contact_gender': _updateContactGenderController.text,
    'contact_age': _updateContactAgeController.text,
    'contact_ambulance': _updateContactAmbulanceController.text,

  });
}else{


  CollectionReference _request = FirebaseFirestore.instance.collection(
      'requests');
  _request.doc(selectedDocumentId).update({

    'contact_name': _updateContactNameController.text,
    'contact_phone': _updateContactPhoneController.text,
    'contact_address': _updateContactAddressController.text,
    'contact_email': _updateContactEmailController.text,
    'contact_blood': _updateContactBloodController.text,
    'contact_gender': _updateContactGenderController.text,
    'contact_age': _updateContactAgeController.text,
    'contact_ambulance': _updateContactAmbulanceController.text,

});


 }}
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text("Patient Requirement",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),

               const SizedBox(height: 20,),
                TextField(
                  controller: _updateContactNameController,
                  decoration: InputDecoration(
                      hintText: "Enter name",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactPhoneController,
                  decoration: InputDecoration(
                      hintText: "Enter phone Number",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactAddressController,
                  decoration: InputDecoration(
                      hintText: "Enter Address",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactEmailController,
                  decoration: InputDecoration(
                      hintText: "Enter Email",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactBloodController,
                  decoration: InputDecoration(
                      hintText: "Enter Blood Group",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),

                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactGenderController,
                  decoration: InputDecoration(
                      hintText: "Enter Gender",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactAgeController,
                  decoration: InputDecoration(
                      hintText: "Enter Age",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: _updateContactAmbulanceController,
                  decoration: InputDecoration(
                      hintText: "Enter Ambulance",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(10))),

                ),
                const SizedBox(height: 10,),

                MaterialButton(onPressed: (){

                  updateData(widget.documentId);
                  Navigator.pop(context);
                },color: Colors.blue,child: const Text("Send Request"),),
              ],
            ),
          ),
        ),

    );
  }
}
