class St
{
 String ? name;
 int ? roll;
 void display()
 {
  print('hi');
 }
}
class St2 extends St {

 void display()
 {
 super.display();
  print('hello');
 }
}
void main()
{
 St2 rakb=St2();
 rakb.name='parvej';
 rakb.display();
}