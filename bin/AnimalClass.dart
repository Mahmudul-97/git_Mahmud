class Animal{
  String name;
  Animal(this.name);
  sound()
  {
    print("animal makes sound");
  }
}
class Dog extends Animal{ //Inherite
  Dog(super.name);
  eat()
  {
    print('dog eating');
  }
//Method Overriding
 sound()
 {
   print("gau gau");
 }

  }

main()
{
  Dog dog=Dog("kalo kutta");
  dog.sound();
  dog.eat();
  print(dog.name);
}