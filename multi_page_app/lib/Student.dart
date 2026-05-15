class Student {
  String firstName = "", lastName = "", favoriteSubject = "";
  int gradeLevel = 0, age = 0;
  double gpa = 0.0;
  Student(
    String firstName,
    String lastName,
    String favoriteSubject,
    int gradeLevel,
    int age,
    double gpa,
  ) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.favoriteSubject = favoriteSubject;
    this.gradeLevel = gradeLevel;
    this.gpa = gpa;
    this.age = age;
  }
}
