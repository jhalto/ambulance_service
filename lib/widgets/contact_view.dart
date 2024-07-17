import 'package:ambulance_service/widgets/update_contact.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  final Stream<QuerySnapshot> _view = FirebaseFirestore.instance.collection('requests').snapshots();
  Future<void> deleteRequest(selectedDocument){
    return FirebaseFirestore.instance
        .collection('requests')
        .doc(selectedDocument).delete()
        .then((value) => print("Data is Deleted"))
        .catchError((onError)=>print('error'));
  }
  Future<void> updateRequest(selectedDocumentID,contactName,contactPhone,contactAddress,contactEmail,contactBlood,contactGender,contactAge,contactAmbulance){
    return showModalBottomSheet(context: context,builder: (context)=>UpdateContact(documentId: selectedDocumentID,contactName: contactName,contactPhone: contactPhone,contactAddress: contactAddress,contactEmail: contactEmail,contactBlood: contactBlood,contactGender: contactGender,contactAge: contactAge, contactAmbulance: contactAmbulance));
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Request Details"),),
      body: StreamBuilder(
        stream: _view,
        builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
          if (snapshot.hasError){
            return const Text("Something went wrong");
          }
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          return SafeArea(
            child: Scaffold(
              body: ListView(
                children:
                  snapshot.data!.docs.map((DocumentSnapshot document) {
                     Map<String,dynamic> data = document.data()! as Map<String,dynamic>;
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         decoration: BoxDecoration(
                           border: Border.all()
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   const Text("Name: "),
                                   Text(data['contact_name']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Phone: "),
                                   Text(data['contact_phone']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Email: "),
                                   Text(data['contact_email']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Address: "),
                                   Text(data['contact_address']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Blood group: "),
                                   Text(data['contact_blood']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Gender: "),
                                   Text(data['contact_gender']),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Text("Age: "),
                                   Text(data['contact_age']),
                                 ],
                               ),
                               Row(

                                 children: [
                                   const Text("Ambulance Type: "),
                                   Text(data['contact_ambulance']),
                                 ],
                               ),
                               const SizedBox(height: 5),
                               Row(
                                 children: [
                                   TextButton(onPressed: (){
                                     deleteRequest(document.id);
                                   }, child: const Text("Delete"),),
                                   TextButton(onPressed: (){
                                     updateRequest(document.id,data['contact_name'],data['contact_phone'], data['contact_address'],data['contact_email'],data['contact_blood'],data['contact_gender'],data['contact_age'],data['contact_name']);
                                   }, child: const Text("Edit"),),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     );
                  }).toList()

              ),
            ),
          );
        },
      ),
      floatingActionButton: MaterialButton( onPressed: (){
        Navigator.pop(context);
      },child: Text("Sign out"),),
    );
  }
}
