//Bubble sort
void bubbleSort(var list){
  int i,j;
  for(i=0;i<list.length-1;i++){
    for(j=0;j<list.length-i-1;j++){
      if(list[j]>list[j+1]){
        var t = list[j];
        list[j] =list[j+1];
        list[j+1]=t;
      }
    }
  }
}

void main(){
  var i=[2,5,4,3];
  print(i);
  bubbleSort(i);
  print('Sorted list $i');
}