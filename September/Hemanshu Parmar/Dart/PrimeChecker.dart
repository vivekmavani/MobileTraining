
////////// Program for checking given number is prime or non-prime number

class PrimeChecker{
  
  //method for checking prime number
  bool isPrime(int num){
    
    //check negative cases
    if(num<=1){
      return false;
    }
    
    for (int i = 2; i < num; i++){
    
            if (num % i == 0){
              //num will be even/non-prime number
              return false;
            }
    
      }
    return true;
    
  }
}

void main(){
  
  //make obj of Prime Class
  PrimeChecker p1=new PrimeChecker();
  
  //print bool result coming from isPrime() funcation
  print(p1.isPrime(4));
  print(p1.isPrime(3));
  print(p1.isPrime(107));
  print(p1.isPrime(-2));

}

---------------------------------Output---------------------------------

false
true
true
false
