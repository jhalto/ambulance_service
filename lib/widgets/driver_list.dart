import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({Key? key}) : super(key: key);

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(centerTitle: true,title: Text("Driver List"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(

              title: Text("Rahim"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,),
            ListTile(

              title: Text("Karim"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,),
            ListTile(

              title: Text("Palash"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Rafu"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,),
            ListTile(

              title: Text("Kalu"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Shopon"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Shawon"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Rafiq"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Jobbor"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Tanim"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Jalal"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,), ListTile(

              title: Text("Kishan"),
              subtitle: Text("01729444333"),
            ),
            SizedBox(height: 10,),
            
          ],
        ),
      ),
    );
  }
}
