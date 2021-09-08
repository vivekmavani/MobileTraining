//For eg: Input array =[0,1,0,1,0,0,1,1,1,0]
//Output:[0,0,0,0,0,1,1,1,1,1]

void main() {
  List<int> array = [0, 1, 0, 1, 0, 0, 1, 1, 1, 0];
  for (int i = 0; i < array.length; i++) {
    for (int j = i; j < array.length - 1; j++) {
      if (array[j] > array[j + 1]) {
        int t = array[j];
        array[j] = array[j + 1];
        array[j + 1] = t;
      }
    }
  }
  print('Output : $array');
}
