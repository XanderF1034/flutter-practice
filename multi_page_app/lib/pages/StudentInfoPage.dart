import 'package:flutter/material.dart';
import 'package:multi_page_app/pages/ProfilePage.dart';
import 'package:multi_page_app/Student.dart';

class Studentinfopage extends StatelessWidget {
  const Studentinfopage({super.key, required this.student});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xander Info Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                ("Name: ${student.firstName} ${student.lastName}"),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Age: ${student.age}",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Grade Level: ${student.gradeLevel}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'Favorite Subject: ${student.favoriteSubject}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 50),
              Text(
                'GPA: ${student.gpa}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go To Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
