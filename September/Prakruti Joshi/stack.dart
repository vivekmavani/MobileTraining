
class  stack 
{
  final len=5;
  var array_list=[];
  int top=-1;

  void push(int n)
  {
    if(top>=len-1)
    {
      print("stack is full");
    }
    else
    {
      array_list.add(n);
      top++;
    }
  }

  void pop()
  {
    if(array_list.isEmpty)
    {
      print("Stack is full");
    }
    else
    {
      array_list.removeLast();
    }
  }
  void show()
  {
    print(array_list);
  }
  
}

void main()
{
  stack s =new stack();
  print("pushing some numbers into the stack");
  s.push(3);
  s.push(4);
  s.push(5);
  print("Here is the stack view after push");
  s.show();
  print("Popping the last numeber from the stack");
  s.pop();
  print("Here is the stack view after pop");
  s.show();
}
