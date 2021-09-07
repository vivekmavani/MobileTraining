void main() {
  var ar = [4, 6, 8, 9, 7, 3, 2, 1, 5];

  final b = Bubblesort(array: ar);
  b.getarray();
}

class Bubblesort {
  var array;
  Bubblesort({this.array});

  void getarray() {
    for (int i = 0; i < array.length - 1; i++) {
      for (int j = 0; j < array.length - i - 1; j++) {
        if (array[j] > array[j + 1]) {
          int c = array[j];
          array[j] = array[j + 1];
          array[j + 1] = c;
        }
      }
    }
    print(array);
  }
}
