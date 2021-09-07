import 'dart:collection';

class Stack {
  List items;
  int poped_elemet = 0;
  String toString() => 'DefaultStack :$items';
  Stack(this.items);

  void push(int element) {
    this.items.add(element);
  }

  int pop(List $items) {
    poped_elemet = this.items.removeLast();
    return this.poped_elemet;
  }
}

void main() {
  Queue<int> katar = Queue();

  print(katar);

  katar.add(1);
  katar.add(2);
  katar.add(3);

  print(katar);
  print(katar.removeFirst());
  print(katar);
  print(katar.removeLast());
  print(katar);

  List temp = [1, 2, 3, 4];

  Stack s1 = new Stack(temp);

  s1.push(5);
  print(s1);

  print(s1.pop(temp));
  print(s1);
}
