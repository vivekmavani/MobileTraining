class Bubble {
  int i = 0, j = 0, temp = 0;

  void sort(var list) {
    int n = list.length;

    for (i = 0; i <= n - 1; i++) {
      for (j = 0; j < n - i - 1; j++) {
        if (list[j] < list[j + 1]) {
          temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
      print(list[j]);
    }
  }
}

void main() {
  var list = [10, 70, 50, 40, 60, 30, 20, 80, 100, 90, 60];
  int n = list.length;

  print("Unsorted Array is : ${list}");
  Bubble b = new Bubble();
  print("sorted Array is : ");
  b.sort(list);
}
