//////////// Give List and integer number it will find all unqiue pair combination as a sum of that number from list

class SumChecker{
  
  //check for elements whoes addition is given num
  void getPairsOfNumber(List<int> list,int num){
    
    //check if passed number or list is valid
    if(list.isEmpty || num <1){
      print("Please provide both :valid list and number");
      return;
    }
    else{
      
      for (int i=0;i<list.length;i++){
        
      for(int j=i+1;j<list.length;j++){
        
        if(list[i]+list[j]==num){
         
          //print non repeated numbers
         print("Two numbers whose addition is $num are (From given List) :"+list[i].toString()+","+list[j].toString());
        
        }
      
      }
    }
      
      
    }
 
  }
}


void main(){
  
  //create list of integers
  List<int> list=[0,3,1,2,4,7];
  
  //create obj of Sumchecker
  SumChecker s1=new SumChecker();
  
  //pass list and number whose sum elements u want to find
  s1.getPairsOfNumber(list,7);
}

---------------------------------Output---------------------------------

Two numbers whose addition is 7 are (From given List) :0,7
Two numbers whose addition is 7 are (From given List) :3,4