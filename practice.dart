import 'dart:io';

void main() {
  List<String> studentClasses = [];
  String ? studentName, favoriteSubject,studentClass;
  int ? studentAge, studentGrade;
  bool goodSubject = false;
  print("Enter your name:");
  studentName = stdin.readLineSync();
  print("Enter your age:");
  studentAge = int.parse(stdin.readLineSync()!);
  do {
    print("Enter your grade level:");
    studentGrade = int.parse(stdin.readLineSync()!);
    if (studentGrade < 1 || studentGrade > 12)
    {
      print("Please enter a valid grade level.\n");
    }
  } while (studentGrade < 1 || studentGrade > 12);
  
  do {
    print("Enter your favorite subject:");
    favoriteSubject = stdin.readLineSync();
    if (favoriteSubject?.toLowerCase() == "math" || favoriteSubject?.toLowerCase() == "english" || favoriteSubject?.toLowerCase() == "history" || favoriteSubject?.toLowerCase() == "science")
    {
      goodSubject = true;
    }
    else
    {
      print("Bad subject, enter one of the core ones.\n");
      goodSubject = false;
    }
  } while (!goodSubject);

  for(int i = 1; i <= 4; i++)
  {
    print("Enter class number: $i");
    studentClass = stdin.readLineSync();
    studentClasses.add(studentClass!);
  }

  showProfile(studentName, favoriteSubject, studentClasses, studentAge, studentGrade);
}
void showProfile(String? name, String? favoriteSubject, List<String> studentClasses, int studentAge, int studentGrade)
{
  print("$name is a $studentAge year old $studentGrade grader whos favorite subject is $favoriteSubject and he takes ${studentClasses[0]},${studentClasses[1]},${studentClasses[2]},${studentClasses[3]}");
}