void main() {
  final person = Person(name : "Vivek",age : 23,height: 1.84,weight: 78);
 print(person.bmi); 
}

mixin BMI{

  double bmiofpersion(double height,double weight){
    return weight / (height * height);
  }
}

class Person with BMI{

  Person({this.name,this.age,this.height,this.weight});
  final String name;
  final int age;
  final double  height;
  final double weight;

  double get bmi => bmiofpersion(height,weight);
}