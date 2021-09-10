class parent{
  
  void multi(int a, int b){
    print(a*b);
  }
}

class child extends parent{
  void sum(int a, int b){
    print(a+b);
  }
}


void main()
{
 
  parent p = new parent();
  p.multi(5,6);
  
  child c = new child();
  c.sum(5,6);
  c.multi(5,6);
}