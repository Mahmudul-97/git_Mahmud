class Father {
  String   name;
  String land='10 biga';
  String hou='tin shade';
  //Constructor
  Father(this.name)
  {
    print('$name object created');
  }
  incomeSource()
  {
    print('farming');
  }
}
//Inheritance
class Son extends Father {
  //String land = '20 biga';
  String SonName;

  //parent variable acces ar jonno Super
//Constructor
  Son(this.SonName,super.name);
@override
  incomeSource()
{
print("flutter");
}
}
main (){
  Son abid=Son('karim','rafiq');
  print(abid.land);
  print(abid.SonName);
abid.incomeSource();
}
