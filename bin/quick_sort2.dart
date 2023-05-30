List quickSort(List arr) {
  quickSortHelper(arr, 0, arr.length-1);
  return arr;
}

void quickSortHelper(List arr, startIndex, endIndex) {
  if (startIndex >= endIndex) {
    return;
  }

  int leftIndex = startIndex + 1;
  int rightIndex = endIndex;
  int pivot = startIndex;
  while (rightIndex >= leftIndex) {
    if (arr[leftIndex] > arr[pivot] && arr[rightIndex] < arr[pivot]) {
      swap(arr, rightIndex, leftIndex);
      leftIndex++;
      rightIndex--;
    }
    if(arr[leftIndex]<=arr[pivot]){
      leftIndex++;
    }
    if(arr[rightIndex]>=arr[pivot]){
      rightIndex--;
    }
  }
  swap(arr, rightIndex, pivot);
  quickSortHelper(arr, startIndex, rightIndex-1);
  quickSortHelper(arr, rightIndex+1, endIndex);
}

void swap(List arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void main(List<String> args) {
  List<int> arr = [38, 2, 52, 5, 2, 59, 82, 4];
  print(quickSort(arr));
}
