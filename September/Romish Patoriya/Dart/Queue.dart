//Queue Data Structure
class Queue {
  List queue = [];
  int Max = 5;
  int rear = -1;
  int front = 0;
  int itemCount = 0;

  void peek() {
    if (!isempty()) {
      print('${queue[front]} for peek.');
    } else {
      print('Queue is empty.');
    }
  }

  bool isfull() {
    return itemCount == Max;
  }

  bool isempty() {
    return itemCount == 0;
  }

  void enqueue(var data) {
    if (!isfull()) {
      if (rear == Max - 1) {
        rear = -1;
      }
      rear = rear + 1;
      queue.add(data);
      itemCount++;

      print('$data was added.');
    } else {
      print('queue is full.');
    }
  }

  void dequeue() {
    if (isempty()) {
      print('Queue is qmpty.');
    } else {
      int data = queue[front++];
      if (front == Max) {
        front = 0;
      }

      print('$data was removed.');
      itemCount--;
    }
  }
}

void main() {
  Queue q = Queue();
  q.enqueue(5);
  q.enqueue(10);
  q.enqueue(15);
  q.dequeue();
  print(q.itemCount);
  q.peek();
  q.enqueue(13);
  q.enqueue(20);
  q.enqueue('45.00');
  q.dequeue();
  q.enqueue('string');
  print(q.itemCount);
  print(q.isfull());
  print(q.isempty());
  q.peek();
}
