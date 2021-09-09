////////////// Program for Adding Bonus salary to those who are having salary below 20,000

class Employee{
  
  //object will have salary_list variable
 List salary_list=[0];
  
  //setter method for of salary
void setSalary(List sal){
  this.salary_list=sal;
}
  //getter method for salary
 List getSalary(){
   return this.salary_list;
 }

  //method for giving bonus to employees
void giveBonusToEmployees(int bonus){
  
  if(getSalary().length<1){
    print("Please provide atleast one salary");
    return;
  }
    for (int salary in getSalary()){
      if(salary <= 20000 && bonus > 0){
        salary=salary+bonus;
      print("salary after incrementing $bonus is :"+salary.toString());
       
      }
    }
   
    
  }
}



void main(){

  //create list of salaries
  List<int> sal_list=[12345,24000,30000,15000];
  
  //obj of Emplyoee class
  Employee e1=new Employee();
  
  //calling setter and getter methods
  e1.setSalary(sal_list);
  print("Default salaries:"+e1.getSalary().toString());
  
  //give bonus to whom where salary is below 20000
  e1.giveBonusToEmployees(1001);

  
}
---------------------------------Output---------------------------------

Default salaries:[12345, 24000, 30000, 15000]
salary after incrementing 1001 is :13346
salary after incrementing 1001 is :16001