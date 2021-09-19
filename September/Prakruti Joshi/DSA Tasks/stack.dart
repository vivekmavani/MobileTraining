
class  stack 
{
  final len=5;
  var array_list=[];
  int top=-1;

  void push(dynamic str)
  {
    if(top>=len-1)
    {
      print("stack is full");
    }
    else
    {
      array_list.add(str);
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
  print("pushing some element into the stack");
  s.push(3);
  s.push('abc');
  s.push('#3%');
  s.push(5);
  print("Here is the stack view after push");
  s.show();
  print("Popping the last element from the stack");
  s.pop();
  print("Here is the stack view after pop");
  s.show();
}
