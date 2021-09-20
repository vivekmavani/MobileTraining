class demo {
  List queue = []; // this is growable list
  // consider queue has fix length of 5 for check queue is full or not

  void enqueue(var a) {
    if (queue.length == 5) {
      print('queue is full');
    } else {
      queue.add(a); //inserted at last pos
      print('after insertion of $a element:$queue');
    }
  }

  void dequeue() {
    // check queue is empty or not
    if (queue.isEmpty) {
      print('queue is empty');
    } else {
      queue.removeAt(0); //removed from 1st pos
      print('after deletion:$queue');
    }
  }
}

void main() {
  demo d = new demo();

  // insert an elements
  d.enqueue(12);
  d.enqueue("Kuldipsinh");
  d.enqueue(75.12);

  // remove an element
  d.dequeue();
}

// o/p
// after insertion of 12 element:[12]
// after insertion of Kuldipsinh element:[12, Kuldipsinh]
// after insertion of 75.12 element:[12, Kuldipsinh, 75.12]
// after deletion:[Kuldipsinh, 75.12]