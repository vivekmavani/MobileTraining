void main() {
//final person = Person(age : 12,name : "vivek",height: 6.00);
//print(person.describe2());
  final employee = Employee(age : 12,name : "vivek",height: 6.000,
                            taxCode : "E12",salary : 1200);
  print(employee.describe2());
    print(employee);
}

class Person{
  
 final int age;
 final double height;
 final String name;
 Person({required  this.age,required this.name,required  this.height});

String describe2()
{
  return "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe2 ";
}

String describe3() =>
 "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe3 ";


String describe4()
{
  return "Hello i m $name. my name has ${name.length} letters. I 'm $age years old. I'm $height meters tall. describe4 ";
}
  //override Object.toString 
  @override
  String toString() => 'name : $name,height : $height, age : $age';
}

class Employee extends Person{

Employee({required  int age,required  String name,
          required  double height,required this.taxCode,required this.salary})
  : super(age: age,name : name,height : height);

  final String taxCode;
  final int salary;
  
    @override
   String toString() => '${super.toString()}, taxcode : $taxCode, salary: $salary';
}
