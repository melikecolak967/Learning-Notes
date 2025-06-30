import 'dart:io';

void main(List<String> args) {
  while (true) {
    try {
      print("Enter your name (exit: q):");
      String? name = stdin.readLineSync();

      if (name?.toLowerCase() == 'q') {
        print('Program is terminating...');
        break;
      }
      // Get surname
      print("Enter your surname:");
      String? surname = stdin.readLineSync();

      List<double> grades = [];
      // Ask how many grades will be entered
      print("How many grades will be calculated?");
      String? gradeCountInput = stdin.readLineSync();
      if (gradeCountInput == null || gradeCountInput.trim().isEmpty) {
        throw Exception("Enter a valid number");
      }

      int gradeCount = int.parse(gradeCountInput.trim());
      if (gradeCount <= 0) {
        throw Exception("Grade count must be greater than 0");
      }

      for (int i = 0; i < gradeCount; i++) {
        print('Enter grade ${i + 1}: ');
        String? gradeInput = stdin.readLineSync();
        if (gradeInput == null || gradeInput.trim().isEmpty) {
          throw Exception("Enter a valid number");
        }

        double grade = double.parse(gradeInput.trim());
        grades.add(grade);
      }

      print(calculateAverage(name, surname, grades));
    } catch (e) {  // ✅ Catch errors
      print('❌ ERROR: $e');
      print('Try again!\n');
    }
  }
}

String calculateAverage(String? name, String? surname, List<double>? grades) {
  // Null check
  if (name == null || surname == null || grades == null) {
    throw Exception('Parameters cannot be null');
  }

  // Name check
  if (name.trim().isEmpty) {
    return 'Invalid name information';
  }

  // Surname check
  if (surname.trim().isEmpty) {
    return 'Invalid surname information';
  }

  // Empty grades check
  if (grades.isEmpty) {
    return '$name $surname - No grades entered';
  }

  double total = 0;
  for (double grade in grades) {
    total += grade;
  }
  double average = total / grades.length;

  return 'The grade average of $name $surname: ${average.toStringAsFixed(2)}';
}
