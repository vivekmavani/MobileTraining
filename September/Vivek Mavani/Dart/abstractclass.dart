import 'dart:math'; 
void main(){
   
   final square = Square(size : 12.0);
  // print(square.area());
  printArea(square);
  final circle = Circle(radius : 10.0);
   printArea(circle);
  // print(circle.area());
 }


void printArea(Shape shape)
{
 // print(shape.area());
   print(shape.area);
}
abstract class Shape{
 // double area(); 
  //computed property get and set methods
  double get area;
} 

class Square implements Shape {
  
  Square({this.size});
  final double size;
  
  // double area() => size *size;
   double get area => size *size;
}

class Circle implements Shape {
  
  Circle({this.radius});
  final double radius;
  
   //double area() => radius *radius * radius * pi;
    double get area => radius *radius * radius * pi;
}