//------------Answer of question no. A ----------------------------
abstract class Role {
  void displayRole();
}
//------------Answer of question no. B ----------------------------
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {}

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;
}
//------------Answer of question no. C ----------------------------
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(String name, int age, String address, this.studentID, this.grade,
      this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}
//------------Answer of question no. D ----------------------------
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}
//------------Answer of question no. E ----------------------------
class StudentManagementSystem {
  void main() {
    // Create a Student instance
    Student student =
        Student("John Doe", 20, "123 Main St", "S123", "A", [90.0, 85.0, 82.0]);

    // Create a Teacher instance
    Teacher teacher = Teacher(
        "Mrs. Smith", 35, "456 Oak St", "T456", ["Math", "English", "Bangla"]);

    // Display Student information
    print("Student Information:\n");
    student.displayRole();
    print("Name: ${student.getName}");
    print("Age: ${student.getAge}");
    print("Address: ${student.getAddress}");
    print("Average Score: ${student.calculateAverageScore()}\n");

    // Display Teacher information
    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: ${teacher.getName}");
    print("Age: ${teacher.getAge}");
    print("Address: ${teacher.getAddress}");
    teacher.displayCoursesTaught();
  }
}

void main() {
  StudentManagementSystem().main();
}
