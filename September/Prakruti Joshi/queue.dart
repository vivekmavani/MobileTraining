
class Queue 
{
  List new_list=[];
  List enqueue(int n) 
  {
      new_list.add(n);
      return new_list;
  }
  void dequeue() 
  {
    if(new_list.isEmpty)
    {
      print("Queue is Empty");
    }
    else
    {
      new_list.removeAt(0);
      print(new_list);
    }
  }
  void show()
  {
    print(new_list);
  }
}

void main() 
{
  List array_list = [];

  if(array_list.isNotEmpty)
  {
   print(array_list);
  }
  Queue q =new Queue();
  print("Inserting numbers into the list using enqueue");
  q.enqueue(7);
  q.enqueue(6);
  q.enqueue(3);
  print("Here is the list after inserting the numbers");
  q.show();
  print("Removing the number"); 
  q.dequeue();
}