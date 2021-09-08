//Queue Data Structure
class Queue {
  var queue = [];
  int Max = 5;
  int rear = -1;
  int front = 0;
  int itemCount = 0;

  int peek() {
    if (!isempty()) {
      print('${queue[front]} for peek.');
      return queue[front];
    } else {
      print('Queue is empty.');
      return 0;
    }
  }

  bool isfull() {
    return itemCount == Max;
  }

  bool isempty() {
    return itemCount == 0;
  }

  void enqueue(int data) {
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

  int dequeue() {
    if (isempty()) {
      print('Queue is qmpty.');
      return 0;
    }

    int data = queue[front++];
    if (front == Max) {
      front = 0;
    }

    print('$data was removed.');
    itemCount--;
    return data;
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
  q.enqueue(30);
  q.dequeue();
  q.enqueue(14);
  print(q.itemCount);
  print(q.isfull());
  print(q.isempty());
}
