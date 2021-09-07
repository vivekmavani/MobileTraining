void swap(List x, int i, int j) {
  int temp = x[i];
  x[i] = x[j];
  x[j] = temp;
}

int partition(List x, int low, int high) {
  int pivot = x[high];

  int i = (low - 1);

  for (int j = low; j <= high - 1; j++) {
    if (x[j] < pivot) {
      i++;
      swap(x, i, j);
    }
  }
  swap(x, i + 1, high);
  return (i + 1);
}

void quickSort(List x, int low, int high) {
  if (low < high) {
    int Pindex = partition(x, low, high);

    quickSort(x, low, Pindex - 1);
    quickSort(x, Pindex + 1, high);
  }
}

void main() {
  List<int> x = [10, 7, 8, 9, 1, 5];
  int n = x.length;
  print("Unsorted data: $x");

  quickSort(x, 0, n - 1);
  print("Sorted with Quick Sort: $x");
}
