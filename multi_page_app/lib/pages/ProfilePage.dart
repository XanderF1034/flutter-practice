import 'package:flutter/material.dart';
import 'package:multi_page_app/Student.dart';
import 'package:multi_page_app/pages/StudentInfoPage.dart';

class Profilepage extends StatefulWidget {
  Profilepage({super.key});

  @override
  State<Profilepage> createState() => _Profilepagestate();
}

class _Profilepagestate extends State<Profilepage> {
  final Student xander = Student("Xander", "Fleming", "Science", 11, 17, 4.833);
  final Student ty = Student("Ty", "Allen", "Trigonometry", 11, 17, 2.7);
  final Student zack = Student("Zachary", "Siegel", "ELA", 11, 17, 4.5);
  final TextEditingController searchEditor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<Student> students = [xander, ty, zack];
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Search For a Student",
                  hintText: 'John Doe',
                  border: OutlineInputBorder(),
                ),
              ),
              ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Studentinfopage(student: students[index]),
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
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
