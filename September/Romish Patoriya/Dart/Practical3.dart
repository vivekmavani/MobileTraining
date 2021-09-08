//For eg: Input array =[0,1,0,1,0,0,1,1,1,0]
//Output:[0,0,0,0,0,1,1,1,1,1].

void main() {
  List<int> array = [0, 1, 0, 1, 0, 0, 1, 1, 1, 0];
  int l = array.length - 1;
  for (int i = 0; i < l;) {
    if (array[i] == 1) {
      int t = array[i];
      array[i] = array[l];
      array[l] = t;
      l--;
    } else {
      i++;
    }
  }

  print('Output : $array');
}

//easly : array.sort() using
