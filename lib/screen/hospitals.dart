import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hospitals extends StatefulWidget {
  const Hospitals({Key? key}) : super(key: key);

  @override
  State<Hospitals> createState() => _HospitalsState();
}

class _HospitalsState extends State<Hospitals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Shahid Suhrawardy Hospital"),
          ),
          ListTile(
            title: Text("Ser-e-Banglanagar, Collegegate"),
          ),
          ListTile(
            title: Text("Ad-Din Hospital Moghbazar, Dhaka"),
          ),
          ListTile(
            title: Text("Ahmed Medical Centre Ltd"),
          ),
          ListTile(
            title: Text("Aichi Hospital"),
          ),
          ListTile(
            title: Text("Al Anaiet Adhunik Hospital"),
          ),
          ListTile(
            title: Text("Al- Helal Speacialist Hospital"),
          ),
          ListTile(
            title: Text("Al Jebel-E-Nur Heart Ltd"),
          ),
          ListTile(
            title: Text("Al- Rajhi Hospital"),
          ),
          ListTile(
            title: Text("Al-Ahsraf General Hospital"),
          ),


        ],
      ),
    );
  }
}
