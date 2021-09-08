//user inserts [1,2,3,4,5,6] which is a list right. Now user inserts 5. So what i want you guys to do is write an logic with looping technique...
//Which will return 2,3 and 4,1.Because 2+3=5 and 4+1 is also 5.

void main() {
  List<int> list = [2, 3, 4, 6, 7, 8, 9];
  int x = 10, n = 0;
  var map = Map<int, List<int>>();
  for (int i = 0; i < list.length; i++) {
    for (int j = i; j < list.length; j++) {
      if (add(list[i], list[j]) == x) {
        map[++n] = [list[i], list[j]];
      }
    }
  }
  print(map);
}

int add(int a, int b) {
  return a + b;
}
