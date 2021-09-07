void main() {
  // String name = 'Vivek';
  // int age =12;
  // double height = 1.84;
  var name = 'Vivek';
  var age =12;
  final height = 1.84; 
//height = 9; The final variable 'height' can only be set once.
//Try making 'height' non-final.
dynamic de = 1;
de= "dynamic string";
print("I'm $de dynamic");

//call function
describe(age,name,height);
// return string 
final p2 = describe2(age,name,height);
print(p2);
// return string  with optional argument
final p3 = describe3(age,name);
print(p3);
// return string  with name parameters ---not use [] with {} in dart---
final p4 = describe4(age : age,name : name, height: height);
print(p4);
}

void describe(int age,String name,double height)
{
 print("Hello i m $name");
   print("my name has ${name.length} letters");
   print("I 'm $age years old");
   print("I'm $height meters tall");
}


String describe2(int age,String name,double height)
{
  return "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe2 ";
}

String describe3(int age,String name,[double height = 0.0]) =>
 "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe3 ";


String describe4({int age = 0,String name ="",double height = 0.0})
{
  return "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe4 ";
}