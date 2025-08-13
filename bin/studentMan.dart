// A. Define an interface named Role
abstract class Role {
 void displayRole ();
}

//Create a class Person
class Person extends Role{
  String _name;
  int _age;
  String _address;
 // Role _role;
 Person(this._name, this._age, this._address);//CONSTRUCTOR
  //GETTER METHOD
  String get name => _name;
  int get age => _age;
  String get address => _address;
  void displayRole (){
    print('name:$name');
  }
}
class Student extends Person
{

  List <double> courseScores;
  Student
      (
      String name,
      int age,
      String address,
      this.courseScores): super(name, age, address);
  void displayRole ()
  {
    print('Role: Student');
  }
  double avgfun()
  {
    double avg;
    int math,ban,eng;
    math= 90;
   eng=85;
  ban=82;
    avg=(math+ban+eng)/3;
    return avg;
  }
}
class Teacher extends Person
{
List <String> coursesTaught;
Teacher(
    String name,
    int age,
    String address,

    this.coursesTaught
    ): super(name, age, address);
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
//Create a class StudentManagementSystem
class StudentManagementSystem {}
void  main() {
    Student student = Student(
        "John Doe",
        20,
        "123 Main St",
        [90, 85, 82]
    );
    Teacher teacher = Teacher(
        "Mrs. Smith",
        35,
        " 456 Oak St",
        ["Math", "English", "Bangla"]
    );
    student.displayRole();
   print("\nName:${student.name}");
    print("\nAge:${student.age}");
    print("\nAddress:${student.address}");
    print("\nAverage Score:${student.avgfun()}");
teacher.displayRole();
print('\nName:${teacher.name}');
print("\nAge:${teacher.age}");
print('Address:${teacher.address}');
teacher.displayCourses();
    }



