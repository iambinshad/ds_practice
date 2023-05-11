List<dynamic> quickSort(List array) {
  quickSortHelper(array, 0, array.length - 1);

  return array;
}

void quickSortHelper(List array, int startIdx, int endIdx) {
  if (startIdx >= endIdx) {
    return;
  }
  int pivotIdx = startIdx;
  int leftIdx = startIdx + 1;
  int rightIdx = endIdx;

  while (leftIdx <= rightIdx) {
    if (array[leftIdx] > array[pivotIdx] && array[rightIdx] < array[pivotIdx]) {
      swap(array, leftIdx, rightIdx);
      leftIdx++;
      rightIdx--; 
    }
    if (array[leftIdx] <= array[pivotIdx]) {
      leftIdx++;
    }
    if (array[rightIdx] >= array[pivotIdx]) {
      rightIdx--;
    }
  }
  swap(array, rightIdx, pivotIdx);
  quickSortHelper(array, startIdx, rightIdx - 1);
  quickSortHelper(array, rightIdx + 1, endIdx);
}

void swap(List array, int i, int j) {
  int temp = array[i];
  array[i] = array[j];
  array[j] = temp;
}

void main(List<String> args) {
  List<int> arr = [5,4,7,10,22,3,9];

  print(quickSort(arr));
}
