import 'package:flutter/material.dart';



import 'add_contact.dart';
import 'contact.dart';
import 'db_helper1.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local DB')),
      body: FutureBuilder<List<Contact>>(
          future: DBHelper.readContact(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Loading ......')
                  ],
                ),
              );
            }
            return snapshot.data!.isEmpty
                ? const Center(
              child: Text('Vai data nai '),
            )
                : ListView(
              children: snapshot.data!.map((contacts) {
                return Center(
                  child: SingleChildScrollView(
                    child: Column(

                     children: [
                       Text("${contacts.name}"),
                       Text("${contacts.contact}"),
                       Text("${contacts.email}"),
                       // Text("${contacts.address}"),
                       // Text("${contacts.blood}"),
                       // Text("${contacts.gender}"),
                       // Text("${contacts.age}"),
                       // Text("${contacts.ambulance}"),




                     ],

                    ),
                  ),
                );
              }).toList(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final refress = await Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddContact()));

          if (refress) {
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
