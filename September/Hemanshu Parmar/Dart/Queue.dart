//////////////// Implementing Queue Data Structure with Enqueue, Dequeue and Peep operations and validations

//Class Queue
class Queue {
  
  //creating dynamic list 
  List items=[0];
  
  //Constructor taking the list or you can create getter setter for items
  Queue(this.items);
 
  //for inserting item at front
  List enqueue(dynamic item,List $items) {
    if(item is String && item.isEmpty){
      print("\n *****Null value is not allowed*****");
    }else{
        this.items.add(item);
       print("\n--------------------------\nQueue after adding $item :\n--------------------------");
    
    //print updated Queue
    print(items);
    }
 
    return items;
  }
 
  
  //for removing item from back
  void dequeue(List $items) {
    if(items.isEmpty){
      print("***No Items in the queue***");
  
    }else
    {

    print("\n--------------------------\nDeleted Element is :"+this.items.removeAt(0).toString());
    print("--------------------------\nQueue after removing Element :\n--------------------------");
   
    //print updated queue
    print(items);
   
    }
   
  }
  
  //for checking perticular element in list
  bool peep(dynamic item,List items){
    
    if(item is String && item.isEmpty){
      print("\nPlease provide element for searching.");
      return false;
    }
    print("\n Checking $item in List :");
    
    for(var i in items){
      if(i==item){
        return true;
      }
  
    }
    return false;
    
  }
  
 
}


 
void main() {
  
 //creating list 
  List myList<dynamic> = ["abc","786","hello","758.47347"];
 
 // print Initial stack stage
  print("--------------------------\nDefault Queue:\n--------------------------");
  if(myList.isNotEmpty){
   print(myList);
  }
  
  //implement queue
 Queue q1=new Queue(myList);
  
  //insert at front
  q1.enqueue("444",myList);
  
  //delete from back
  q1.dequeue(myList);
  q1.dequeue(myList);
  
  //peep or check for element in queue
  bool isFound=q1.peep("444",myList);
  
  print("\nElement present in List : "+isFound.toString());
  
  
}

---------------------------------Output---------------------------------


--------------------------
Default Queue:
--------------------------
[abc, 786, hello, 758.47347]

--------------------------
Queue after adding 444 :
--------------------------
[abc, 786, hello, 758.47347, 444]

--------------------------
Deleted Element is :abc
--------------------------
Queue after removing Element :
--------------------------
[786, hello, 758.47347, 444]

--------------------------
Deleted Element is :786
--------------------------
Queue after removing Element :
--------------------------
[hello, 758.47347, 444]

 Checking 444 in List :

Element present in List : true