void main() {
  Stack s = Stack();
  s.push(1);
  s.push(2);
  s.push(3);
  s.push(4);
  s.push(4);
  s.push(4);
  s.push(1);
  s.push(2);
  s.push(3);
  s.push(4);
  s.push(4);
  s.list();
  s.peek();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.pop();
  s.list();
}

class Stack {
  var array = [];
  final max = 10;
  int top = -1;

  void push(int a) {
    if (top >= max - 1) {
      print("stack is overflow");
    } else {
      array.add(a);
      top++;
    }
  }

  void pop() {
    if (array.isEmpty) {
      print("stack is empty");
    } else {
      array.removeLast();
    }
  }

  void peek() {
    if (array.isEmpty) {
      print("stack is empty");
    } else {
      print(array.last);
    }
  }

  void list() {
    print(array);
  }

  bool Empty() => array.isEmpty;
}
