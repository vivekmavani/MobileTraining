void segregate(var x) {
  int n = x.length;

  int count = 0;
  for (int element in x) {
    if (element == 0) {
      count++;
    }
  }
  for (int i = 0; i < count; i++) {
    x[i] = 0;
  }
  for (int i = count; i < n; i++) {
    x[i] = 1;
  }
}

void main() {
  var arr = [0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1];
  print("Array befor segregation $arr");

  segregate(arr);

  print("\nArray after segregation $arr");
}
