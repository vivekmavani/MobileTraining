void swap(List y, int a, int b) {
  int temp = y[a];
  y[a] = y[b];
  y[b] = temp;
}

void BubbleSort(List x, int n) {
  for (int i = 0; i < n - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (x[j] > x[j + 1]) {
        swap(x, j, j + 1);

        swapped = true;
      }
    }
    if (!swapped) break;
  }
}

void main() {
  List<int> x = [5, 6, 2, 6, 9, 0, -1];
  int n = x.length;
  print("Unsorted data: $x");

  BubbleSort(x, n);
  print("Sorted with Bubble Sort: $x");
}
