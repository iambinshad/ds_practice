class BubbleSort {
  List sort(List array) {

    for (var i = 0; i < array.length; i++) {
      for (var j = i + 1; j < array.length; j++) {
        if (array[i] > array[j]) {
          int temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }
    return array;
    
  }
}

void main(List<String> args) {
  BubbleSort obj = BubbleSort();
  List<int> array = [9, 8, 7, 6, 5, 4, -3, 2, 1];
  print(obj.sort(array));
}
