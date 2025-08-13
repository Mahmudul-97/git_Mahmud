class Student {
  String ? _name;
  set st(name)
  {
    _name=name;
  }
  String get getName{
     return _name ?? 'unknown';
  }
}
 void main()
 {
   Student st1 =Student();
   st1._name='ostad';
   print(st1.getName);

 }