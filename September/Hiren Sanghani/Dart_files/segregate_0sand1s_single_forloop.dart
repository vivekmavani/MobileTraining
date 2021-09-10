void main() {
  var list = [0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1];
  int i = 0, temp = 0, n = list.length, j = n - 1;

  while (i < j) {
    if (list[i] == 0 && list[j] == 0) {
      i++;
    } else if (list[i] == 0 && list[j] == 1) {
      i++;
      j--;
    } else if (list[i] == 1 && list[j] == 0) {
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    } else {
      j--;
    }
  }
  for (i = 0; i < n - 1; i++) {
    print(list[i]);
  }
}
