//Stack Data structure

class Stack{
  
  var list = [];
  peek(){
    if(list.isNotEmpty){
    print('${list[list.length-1]} was on top.');
    }
    else{
      print('Stack was Empty.');
    }
  }
  
  pop(){
    if(list.isNotEmpty){
      print('${list.removeLast()} was Remove.');
    }
    else{
      print('Stack was Empty.');
    }
  }
  
  push(var i){
    list.add(i);
    print('$i was added.' );
  }
  
}

void main(){
  Stack s = Stack();
  s.push(9);
  s.push(10);
  s.push('30');
  s.push('str');
  s.pop();
  s.peek();
}
