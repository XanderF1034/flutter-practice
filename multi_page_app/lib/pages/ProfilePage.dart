import 'package:flutter/material.dart';
import 'package:multi_page_app/Student.dart';
import 'package:multi_page_app/pages/StudentInfoPage.dart';

class Profilepage extends StatelessWidget {
  Profilepage({super.key});

  final Student xander = Student("Xander", "Fleming", "Science", 11, 17, 4.833);
  final Student ty = Student("Ty", "Allen", "Trigonometry", 11, 17, 2.7);
  final Student zack = Student("Zachary", "Siegel", "ELA", 11, 17, 4.5);

  @override
  Widget build(BuildContext context) {
    List<Student> students = [xander, ty, zack];
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Studentinfopage(student: xander),
                    ),
                  );
                },
                child: Text(
                  '${students[index].firstName} ${students[index].lastName}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
