import 'package:flutter/material.dart';
import 'patient_details_screen.dart';

class DashboardScreen extends StatelessWidget {
  final List<String> patients = ['John Doe', 'Jane Smith', 'Michael Brown'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: ListView.builder(
        itemCount: patients.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(patients[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PatientDetailsScreen(patientName: patients[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
