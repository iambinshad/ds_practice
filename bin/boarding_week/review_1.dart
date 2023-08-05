
class Week1 {
  List<int> bubbleSort(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length - i; j++) {
        if (arr[i] > arr[j]) {
          int temp = arr[i];
          arr[i] = arr[j];
          arr[j] = temp;
        }
      }
    }

    return arr;
  }

  
}

void main(List<String> args) {
  List<int>arr = [28,3,29,40];
  Week1 obj = Week1();
  print(obj.bubbleSort(arr));
}