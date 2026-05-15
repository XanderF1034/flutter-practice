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
  final searchEditor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Student> students = [xander, ty, zack];

    String searchText = searchEditor.text.toLowerCase();
    List<Student> filteredStudents = students.where((student) {
      return student.firstName.toLowerCase().contains(searchText) ||
          student.lastName.toLowerCase().contains(searchText);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            children: [
              TextField(
                controller: searchEditor,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: "Search For a Student",
                  hintText: 'John Doe',
                  border: OutlineInputBorder(),
                ),
              ),
              if (filteredStudents.isNotEmpty) ...[
                SizedBox(height: 75),
                Expanded(
                child: ListView.builder(
                  itemCount: filteredStudents.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Studentinfopage(
                                student: filteredStudents[index],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '${filteredStudents[index].firstName} ${filteredStudents[index].lastName}',
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
                ),
              ]
              else ...[
                SizedBox(height: 50),
                const Text(
                  "No Students found.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  )
                  
                )

              ]
                
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchEditor.dispose();
    super.dispose();
  }
}
