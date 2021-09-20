class Queue {
  int item = 0, front = -1, rear = -1;
  var que = new List.filled(5, 0);
  int maxsize = 5;

  bool isFull() {
    if (rear == maxsize - 1)
      return true;
    else
      return false;
  }

  bool isEmpty() {
    if (front == -1)
      return true;
    else
      return false;
  }

  void enqueue(int item) {
    if (isFull()) {
      print("queue is full");
    } else {
      if (front == -1) {
        front = 0;
      }
      print("inserting ${item}");
      rear = rear + 1;
      que[rear] = item;
    }
  }

  void dequeue() {
    if (isEmpty()) {
      print("queue is empty");
    } else {
      item = que[front];
      print("Deleted element is : ${item}");

      if (front >= rear) {
        front = -1;
        rear = -1;
      } else {
        front = front + 1;
      }
    }
  }

  void printqueue() {
    int i = 0;
    print("Elements of queue are: ");
    if (isEmpty()) {
      print("Empty");
    } else {
      for (i = front; i <= rear; i++) {
        print(que[i]);
      }
    }
  }
}

void main() {
  Queue q1 = new Queue();

  q1.enqueue(1);
  q1.enqueue(2);
  q1.enqueue(3);
  q1.enqueue(4);

  q1.dequeue();

  q1.printqueue();
}
