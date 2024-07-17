import 'package:flutter/material.dart';

class Contact {
  int? id;
  String? name;
  String? contact;
  String? email;
  String? address;
  String? blood;
  String? gender;
  String? age;
  String? ambulance;
  Contact({this.id, required this.name, required this.contact,this.email,
    this.age,this.gender,this.address,this.ambulance,this.blood
  });

  factory Contact.fromJson(Map<String, dynamic> json) =>
      Contact(id: json['id'], name: json['name'], contact: json['contact'],
        //email: json['email'],
          //address: json['address'], blood: json['blood'], gender: json['gender'], age: json['age'], ambulance: json['ambulance']
          );

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'contact': contact,
   // 'email': email,
    //'address': address, 'blood': blood, 'gender': gender, 'age': age, 'ambulance': ambulance
    };
}
