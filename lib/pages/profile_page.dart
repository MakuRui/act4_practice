import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final numController = TextEditingController();
  final birthController = TextEditingController();
  final ageController = TextEditingController();
  final sectionController = TextEditingController();
  final courseController = TextEditingController();
  final fbController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Add Student',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: Mark Louie ',
                      labelText: 'Enter your full name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                        return 'Please enter correct name';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: marklouie@gmail.com ',
                      labelText: 'Enter your email address',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-]+@([\w-]+\.)+[\w]{2,4}')
                              .hasMatch(value)) {
                        return 'Please enter correct email address';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: numController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: 094512349427 ',
                      labelText: 'Enter your phone number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s/0-9]+$')
                              .hasMatch(value)) {
                        return 'Please enter correct phone number';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: birthController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: March 02, 2002 or 03/11/2002 ',
                      labelText: 'Enter your birthday',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                        return 'Please enter correct birthday';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: ageController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: 20 ',
                      labelText: 'Enter your age',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[0-9]+$').hasMatch(value)) {
                        return 'Please enter correct age';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: sectionController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: BSIT-3R1 ',
                      labelText: 'Enter your section',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z-0-9]+$').hasMatch(value)) {
                        return 'Please enter correct section';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: courseController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: BSIT ',
                      labelText: 'Enter your course',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z.]+$').hasMatch(value)) {
                        return 'Please enter correct course';
                      } else {
                        return null;
                      }
                    }),
                TextFormField(
                    controller: fbController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: 'ex: facebook.com/profile? ',
                      labelText: 'Enter your facebook link',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z/-?.]+$').hasMatch(value)) {
                        return 'Please enter correct facebook';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          List studentProfile = [
                            nameController.text,
                            emailController.text,
                            numController.text,
                            birthController.text,
                            ageController.text,
                            sectionController.text,
                            courseController.text,
                            fbController.text,
                          ];
                          Navigator.pop(context,studentProfile);
                        }
                      },
                      child: const Text('Submit')),
                )
              ],
            )),
      ),
    );
  }
}
