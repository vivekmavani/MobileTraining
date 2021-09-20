void main() {
  Queue queue = new Queue();

  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue("vivek");
  queue.enqueue('v');
  queue.list();
  queue.dequeue();
  queue.dequeue();
  queue.list();
  queue.peep();
}

class Queue {
  var array = [];

  void enqueue(dynamic a) {
    array.add(a);
  }

  void dequeue() {
    if (array.isEmpty) {
      print("queue is empty");
    } else {
      array.removeLast();
    }
  }

  void peep() {
    print(array.last);
  }

  void list() {
    print(array);
  }

  bool Empty() => array.isEmpty;
}
