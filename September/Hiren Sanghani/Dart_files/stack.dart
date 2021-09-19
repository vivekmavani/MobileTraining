class Stake {
  int item = 0, top = -1;
  var stake = new List.filled(5, 0);
  int maxsize = 5;

  bool isFull() {
    if (top == maxsize - 1)
      return true;
    else
      return false;
  }

  bool isEmpty() {
    if (top == -1)
      return true;
    else
      return false;
  }

  void push(int item) {
    if (isFull()) {
      print("\n" + "can't insert ${item} Because Stake is full");
    } else {
      print("Inserting ${item}");

      top = top + 1;
      stake[top] = item;
    }
  }

  void pop() {
    if (isEmpty()) {
      print("Stake is empty");
    } else {
      item = stake[top];
      top = top - 1;
      print("poped element is : ${item}");
    }
  }

  void printstake() {
    int i = 0;
    print("Element of stake are :");
    if (isEmpty()) {
      print("empty");
    } else {
      for (i = 0; i < top + 1; i++) {
        print(stake[i]);
      }
    }
  }
}

void main() {
  Stake st = new Stake();
  st.push(1);
  st.push(2);
  st.push(3);
  st.push(4);
  st.push(5);
  st.pop();

  st.printstake();
}
