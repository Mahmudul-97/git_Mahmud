 mixin Writer{
  write ()
  {
    print('writing');
  }
}
 mixin Reader{
 read ()
  {
    print("reading");
  }
}
class Student extends Object with  Writer, Reader
{

}
main()
{
  Student rakib =Student();
rakib.read();
 rakib.write();
}