// Module 5 Assignment: Student Management System with Role-based Interfaces

// A. Define an interface named Role

abstract class Role {
  void displayRole();
}

// B. Create a class Person
class Person implements Role {
  String _name;
  int _age;
  String _address;
  Role _role;

  Person(this._name, this._age, this._address, this._role);

  String get name => _name;
  int get age => _age;
  String get address => _address;

  @override
  void displayRole() {
    _role.displayRole();
  }
}

// C. Create a class Student that extends Person
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores,
      ) : super(name, age, address, _StudentRole());

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    double sum = courseScores.reduce((a, b) => a + b);
    return sum / courseScores.length;
  }
}

class _StudentRole implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}

// D. Create a class Teacher that extends Person
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(
      String name,
      int age,
      String address,
      this.teacherID,
      this.coursesTaught,
      ) : super(name, age, address, _TeacherRole());

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}

class _TeacherRole implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// E. Create a class StudentManagementSystem
class StudentManagementSystem {
   main() {
    Student student = Student(
      "John Doe",
      20,
      "123 Main St",
      "S123",
      "A",
      [90, 85, 82],
    );

    Teacher teacher = Teacher(
      "Mrs. Smith",
      35,
      "456 Oak St",
      "T456",
      ["Math", "English", "Bangla"],
    );

    print("Student Information:\n");
    student.displayRole();
    print("Name: ${student.name}");
    print("Age: ${student.age}");
    print("Address: ${student.address}");
    print("Average Score: ${student.calculateAverageScore().toStringAsFixed(1)}\n");

    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.address}");
    teacher.displayCourses();
  }
}


