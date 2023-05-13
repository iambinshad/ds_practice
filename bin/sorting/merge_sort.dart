 
 void mergeSort(List<int> arr, int leftIndex, int rightIndex) {
  if (leftIndex < rightIndex) {
    int midIndex = (leftIndex + rightIndex) ~/ 2;
    mergeSort(arr, leftIndex, midIndex);
    mergeSort(arr, midIndex + 1, rightIndex);
    merge(arr, leftIndex, midIndex, rightIndex);
  }
}

void merge(List<int> arr, int leftIndex, int midIndex, int rightIndex) {
  
  int leftLength = midIndex - leftIndex + 1;
  int rightLength = rightIndex - midIndex;

  List<int> leftArr = List.filled(leftLength, 0);
  List<int> rightArr = List.filled(rightLength, 0);

  for (int i = 0; i < leftLength; i++) {
    leftArr[i] = arr[leftIndex + i];
  }

  for (int j = 0; j < rightLength; j++) {
    rightArr[j] = arr[midIndex + 1 + j];
  }

  int i = 0;
  int j = 0;
  int k = leftIndex;

  while (i < leftLength && j < rightLength) {
    if (leftArr[i] <= rightArr[j]) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
    }
    k++;
  }

  while (i < leftLength) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  while (j < rightLength) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}
void main(List<String> args) {
  List<int> arr = [29,39,3,2,45,42,14,3,2];
  mergeSort(arr, 0, arr.length-1);
  for (var i in arr) {
    print(i);
  }
}