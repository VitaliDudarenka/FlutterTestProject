import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return TextFormWidgetState();
  }
}

class TextFormWidgetState extends State<TextFormWidget> {
  final _nameFormKey = GlobalKey<FormState>();
  final _emailFormKey = GlobalKey<FormState>();
  final _phoneFormKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void _submit() {
    if (_nameFormKey.currentState!.validate() &&
        _emailFormKey.currentState!.validate() &&
        _phoneFormKey.currentState!.validate()) {
      // TODO SAVE DATA
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _submit,
        tooltip: 'Submit',
        child: const Icon(Icons.check),
      ),
      body: Center(
        child: ListView(
          children: [
            Form(
              key: _nameFormKey,
              onChanged: () => {_nameFormKey.currentState!.validate()},
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Card(
                  elevation: 3,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Name',
                    ),
                    keyboardType: TextInputType.text,
                    validator: validateName,
                  ),
                ),
              ),
            ),
            Form(
              key: _phoneFormKey,
              onChanged: () => {_phoneFormKey.currentState!.validate()},
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Card(
                  elevation: 3,
                  child: TextFormField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Phone Number',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: validateMobile,
                  ),
                ),
              ),
            ),
            Form(
              key: _emailFormKey,
              onChanged: () => {_emailFormKey.currentState!.validate()},
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Card(
                  elevation: 3,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Email Address',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: validateEmail,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String? validateName(String? value) {
  if (value!.length < 3) {
    return 'Name must be more than 2 charater';
  } else {
    return null;
  }
}

String? validateMobile(String? value) {
  if (value!.length != 12) {
    return 'Mobile Number must be of 10 digit';
  } else {
    return null;
  }
}

String? validateEmail(String? value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value!)) {
    return 'Enter Valid Email';
  } else {
    return null;
  }
}
