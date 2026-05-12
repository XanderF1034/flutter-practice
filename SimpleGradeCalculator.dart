import 'dart:io';

void main()
{
  menu();
}
void menu()
{
  String studentName,letterGrade;
  double testScore;
  double average;
  List<double> testScores = [];
  print("Enter student name: ");
  studentName = stdin.readLineSync()!;
  for (int i = 0; i < 3; i++)
  {
    print("Enter test score $i:" );
    testScore = double.parse(stdin.readLineSync()!);
    testScores.add(testScore);
  }
  average = calculateAverage(testScores);
  if (average >= 90)
  {
    letterGrade = "A";
  }
  else if (average < 90 && average >= 80)
  {
    letterGrade = "B";
  }
  else if (average < 80 && average >= 70)
  {
    letterGrade = "C";
  }
  else if (average < 70 && average >= 60)
  {
    letterGrade = "D";
  }
  else
  {
    letterGrade = "F";
  }
  showResults(studentName, testScores, average, letterGrade);
}
double calculateAverage(List<double> testScores)
{
  double total = 0.0;
  for (double d in testScores)
  {
    total += d;
  }
  return (total / (testScores.length));
}
void showResults(String name, List<double> scores, double average, String letterGrade)
{
  print("$name scored ${scores.join(", ")} for an average score of $average which is a $letterGrade");
}