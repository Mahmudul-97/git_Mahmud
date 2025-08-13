import 'human.dart';
main() {


//Create an object

  Student student1 = Student();
  student1.studentname = 'rahim';
  student1.studentclass = 'class-10';
  student1.studentaddress = 'dhaka';
  print(student1.studentname);
  Human manik = Human();
  manik.moving();
  print(manik.eyes);
}
//Create class
class Student {
  String ? studentname;
  String ? studentclass;
  String  ? studentaddress;
}


//class Student {}




