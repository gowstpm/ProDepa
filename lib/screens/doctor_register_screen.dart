import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DoctorRegisterScreen extends StatefulWidget {
  @override
  _DoctorRegisterScreenState createState() => _DoctorRegisterScreenState();
}

class _DoctorRegisterScreenState extends State<DoctorRegisterScreen> {
  String name = '';
  String specialization = '';

  void registerDoctor() {
    FirebaseFirestore.instance.collection('doctors').add({
      'name': name,
      'specialization': specialization,
    });
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                name = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Specialization'),
              onChanged: (value) {
                specialization = value;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: registerDoctor,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
