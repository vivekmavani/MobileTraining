
class Queue 
{
  List new_list=[];
  Queue(List array_list)
  {
    this.new_list=array_list;
  }

  List enqueue(dynamic str) 
  {
      new_list.add(str);
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
    if(new_list.isNotEmpty)
    {
      print(new_list);
    }
    else
    {
      print("Empty Queue: ${new_list}");
    }
  }
}

void main() 
{
  List array_list = [];
  Queue q =new Queue(array_list);
  print("The initial queue:");
  q.show();
  print("Inserting elements into the list using enqueue");
  q.enqueue(7);
  q.enqueue('abc');
  q.enqueue(6);
  q.enqueue('@3%def');
  q.enqueue(3);
  print("Here is the list after inserting the elements");
  q.show();
  print("Removing the element"); 
  q.dequeue();
  q.dequeue();
  q.dequeue();
  q.dequeue();
  q.dequeue();
  q.show();
}