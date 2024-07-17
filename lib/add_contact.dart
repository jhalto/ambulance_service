
import 'package:ambulance_service/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'db_helper1.dart';



class AddContact extends StatefulWidget {
  AddContact({Key? key, this.contact}) : super(key: key);

  final Contact? contact;
  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  // TextEditingController _addressController = TextEditingController();
  // TextEditingController _bloodController = TextEditingController();
  // TextEditingController _genderController = TextEditingController();
  // TextEditingController _ageController = TextEditingController();
  // TextEditingController _ambulanceController = TextEditingController();

  @override
  void initState() {
    if (widget.contact != null) {
      _nameController.text = widget.contact!.name!;
      _nameController.text = widget.contact!.contact!;
      _nameController.text = widget.contact!.email!;
      // _nameController.text = widget.contact!.address!;
      // _nameController.text = widget.contact!.blood!;
      // _nameController.text = widget.contact!.gender!;
      // _nameController.text = widget.contact!.age!;
      // _nameController.text = widget.contact!.ambulance!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(

          child: Column(

            children: [
              _buildTextField(_nameController, 'Name'),
              SizedBox(
                height: 10,
              ),
              _buildTextField(_contactController, 'Contact'),
              // SizedBox(
              //   height: 10,
              // ),
              _buildTextField(_emailController, 'Email'),



              ElevatedButton(
                  onPressed: () async {
                    await DBHelper.createContact(Contact(
                        name: _nameController.text,
                        contact: _contactController.text,
                        email: _emailController.text,
                        // address: _addressController.text,
                        // blood: _bloodController.text,
                        // gender: _genderController.text,
                        // age: _ageController.text,
                        // ambulance: _ambulanceController.text,

                    ),

                    );
                   Navigator.pop(context);
                  },

                  child: Text('Add Contact'))
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildTextField(TextEditingController _cotroller, String hint) {
    return TextField(
      controller: _cotroller,
      decoration: InputDecoration(
          labelText: hint,
          hintText: hint,
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
  }
}
