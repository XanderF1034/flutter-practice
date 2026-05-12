import 'dart:io';

void main() {
  var studentList = [];
  String ? studentName, favoriteSubject;
  int ? studentAge, studentGrade;
  bool goodSubject = false;
  print("Enter your name:");
  studentName = stdin.readLineSync();
  print("Enter your age:");
  studentAge = stdin.readByteSync();
  do {
    print("Enter your grade level:");
    studentGrade = stdin.readByteSync();
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
}