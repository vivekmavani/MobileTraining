// Program for Fibonaci series, Prime number checking , Palidrome string checking, Factorial of given number and simple calculator

class Helper{
  
  ///// Function to check fibonacci number
  
  void fibonaci(int num) {
  
  if (num > 1) {
    
    //Predefined 0 and 1
    int n1 = 0, n2 = 1, n3;
    
    print("\n$n1");
    print(n2);
 
    // now start looping with 3 to the given number
    for (int i = 3; i <= num; i++) {
      n3 = n1 + n2;
      print(n3);
      n1 = n2;
      n2 = n3;
    }
  }
  
  // If exactly 1 entered
  else if (num == 1) {
    print("\n0");
  } else {
    //If 0 is entered
    print("\nPlease provide valid input.");
  }
}
  
  ////// Function to check String is palidrome or not
  void isPalidrome(String string) {
    //given string
  String main_string = "";
    //find lengh of given string
  int length = string.length;
    
  for (int i = length - 1; i >= 0; i--) {
    
    main_string = main_string + string[i];
  }
    
  if(main_string == string){
    print("String '$string' is a palidrome string");
  } 
    else{
      print("String '$string' is not a palidrome string"); 
    }
}

  
  ////////// Function for checking prime number
  bool isPrime(int num){
    
    //check negative cases
    if(num == 1 || num == 0){
      return false;
    }
    //start looping from 2 to given number
    for (int i = 2; i < num; i++){
    
            if (num % i == 0){
              //num will be non-prime number
              return false;
            }
    
      }
    return true;
    
  }
  
  //////// Function for finding factorial of number

  void findFactorial(int num){
    
    //fact of 0 and 1 is always .
    if(num==0 ||num==1){
      print("Factorial of $num is : 1");
    }
    else{
      //find factorial of number above 1
   int i,fact=1;  
   
   for(i=1;i<=num;i++){    
      fact=fact*i;    
  }  
    print("Factorial of $num is :"+fact.toString());
  }

    }
 
  
  void calculate(double num1,double num2,var operator){
    if(num2==0){
      print("Solution not possible");
    }
    else{
      double answer=0;
    switch(operator) {
         case '+': answer = num1 + num2;
        print("$num1 + $num2 is : "+answer.toString());
            break;
         case '-': answer = num1 - num2;
         print("$num1 - $num2 is : "+answer.toString());
            break;
         case '*': answer = num1 * num2;
         print("$num1 * $num2 is : "+answer.toString());
            break;
         case '/': answer = num1 / num2;
         print("$num1 / $num2 is : "+answer.toString());
            break;
         case '%': answer = num1 % num2;
         print("$num1 % $num2 is : "+answer.toString());
            break;
      default: print("Error! Enter correct operator");
         return ;
      }
    }
   
    
  }
  


 

}  

 
void main() {
 
  Helper obj = new Helper();
  
  //////Fibonaci series
  print("\n-------------------- Fibonaci Series --------------------\n ");
 
  print("How many numbers of fibonaci series you want?");
  
  //Invalid input
  obj.fibonaci(0);
  //only 0 will printed
  obj.fibonaci(1);
  //fibonaci series of first 8 numbers
  obj.fibonaci(8);
 
  
  ////// String is Palidrom or Not
  print("\n-------------------- Palidrome String --------------------\n ");
 
  obj.isPalidrome("asabasb");
  obj.isPalidrome("xyyx");
  
  ///// Number is Prime or Not
   print("\n-------------------- Prime Number --------------------\n ");
 
  print("Given number 5 is prime(T/F) :"+obj.isPrime(5).toString());
  print("Given number 12 is prime(T/F) :"+obj.isPrime(12).toString());
 
  ////// Factorial of given number
  print("\n-------------------- Factorial of number --------------------\n ");
  
  obj.findFactorial(6);
  obj.findFactorial(1);
  obj.findFactorial(4);
  
 ////// Simple calculator of 2 numbers
   print("\n-------------------- Simple calculator--------------------\n ");
  
  obj.calculate(4,2,"-");
   obj.calculate(8,2,"*");
   obj.calculate(3,2,"%");
   obj.calculate(3,0,"/");
  
}


--------------------------------- OUTPUT ---------------------------------

-------------------- Fibonaci Series --------------------
 
How many numbers of fibonaci series you want?

Please provide valid input.

0

0
1
1
2
3
5
8
13

-------------------- Palidrome String --------------------
 
String 'asabasb' is not a palidrome string
String 'xyyx' is a palidrome string

-------------------- Prime Number --------------------
 
Given number 5 is prime(T/F) :true
Given number 12 is prime(T/F) :false

-------------------- Factorial of number --------------------
 
Factorial of 6 is :720
Factorial of 1 is : 1
Factorial of 4 is :24

-------------------- Simple calculator--------------------
 
4 - 2 is : 2
8 * 2 is : 16
3 % 2 is : 1
Solution not possible


