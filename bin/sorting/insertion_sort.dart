class InsertionSort{

 List insertion(List array){
  for (var i = 1; i < array.length; i++) {
    int temp = array[i];
    int j = i-1;
    while (j>=0&&array[j]>temp) {
      array[j+1] = array[j];
      j--;
    }
    array[j+1]=temp;
  }
  return array;

 }
}
void main(List<String> args) {
  InsertionSort obj = InsertionSort();
  List<int>arr=[5,7,4,3,10,1];
  print(obj.insertion(arr));
}