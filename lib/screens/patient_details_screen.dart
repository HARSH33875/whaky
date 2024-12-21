import 'package:flutter/material.dart';

class PatientDetailsScreen extends StatelessWidget {
  final String patientName;

  PatientDetailsScreen({required this.patientName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient: $patientName')),
      body: Center(
        child: Text('Details and updates for $patientName'),
      ),
    );
  }
}
