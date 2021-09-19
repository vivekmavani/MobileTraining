class demo {
  List stack = []; // this is a growable list
  // consider stack has fix length of 5 for check stack is full or not

  void push(var a) {
    if (stack.length == 5) {
      print('stack is full');
    } else {
      stack.add(a); // inserted at last pos.
      print('after insertion of $a element:$stack');
    }
  }

  void pop() {
    // check stack is empty or not
    if (stack.isEmpty) {
      print('stack is empty');
    } else {
      stack.removeAt(stack.length - 1); // removed from the last pos.
      print('after deletion:$stack');
    }
  }
}

void main() {
  demo d = new demo();
// insert differet types of elemets
  d.push(12);
  d.push('kuldip');
  d.push(45.65);
  // remove an element
  d.pop();
}

// o/p
// after insertion of 12 element:[12]
// after insertion of kuldip element:[12, kuldip]
// after insertion of 45.65 element:[12, kuldip, 45.65]
// after deletion:[12, kuldip]

