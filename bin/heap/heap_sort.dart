// void heapSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = (n ~/ 2) - 1; i >= 0; i--) {
//     heapify(arr, n, i);
//   }

//   for (int i = n - 1; i >= 0; i--) {
//     int temp = arr[0];
//     arr[0] = arr[i];
//     arr[i] = temp;

//     heapify(arr, i, 0);
//   }
// }

// void heapify(List<int> arr, int n, int i) {
//   int largest = i;
//   int left = 2 * i + 1;
//   int right = 2 * i + 2;

//   if (left < n && arr[left] > arr[largest]) {
//     largest = left;
//   }

//   if (right < n && arr[right] > arr[largest]) {
//     largest = right;
//   }

//   if (largest != i) {
//     int swap = arr[i];
//     arr[i] = arr[largest];
//     arr[largest] = swap;

//     heapify(arr, n, largest);
//   }
// }

// void main() {
//   List<int> arr = [12, 11, 13, 5, 6, 7];
//   print("Original array: $arr");
//   heapSort(arr);
//   print("Sorted array: $arr");
// }

import 'dart:developer';

class HeapSort {
  void heapSort(List<int> arr) {
    int length = arr.length;
    for (int i = (length ~/ 2) - 1; i >= 0; i--) {
      heapify(arr, length, i);
    }
    for(int i = length-1;i>=0;i--){
      int temp = arr[0];
      arr[0]=arr[i];
      arr[i]=temp;
      heapify(arr, i, 0);
    }
  }

  void heapify(List<int> arr, int length, int index) {
    int largest = index;
    int leftChild = index * 2 + 1;
    int rightChild = index * 2 + 2;

    if (leftChild < length && arr[leftChild] > arr[largest]) {
      largest = leftChild;
    }
    if (rightChild < length && arr[rightChild] > arr[largest]) {
      largest = rightChild;
    }
    if (largest != index) {
      int temp = arr[index];
      arr[index] = arr[largest];
      arr[largest] = temp;
      heapify(arr, length, largest);
    }
  }
}

void main(List<String> args) {
  List<int> arr = [28, 493, 281, 4, 50, 382, 5, 1];
  HeapSort heapSort = HeapSort();
  log(arr.toString(), name: "normal");
  heapSort.heapSort(arr);
  log(arr.toString(), name: "heapified and sorted");
}
