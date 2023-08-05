void buildHeap(List<int> arr) {
  int length = arr.length;
  for (int i = (length ~/ 2) - 1; i >= 0; i--) {
    heapify(arr, length, i);
  }
}

void heapify(List<int> arr, int length, int index) {
  int largest = index; 
  int leftChild = 2 * index + 1;
  int rightChild = 2 * index + 2;

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

  void insert(int value) {
    List<int>arr = [];
    arr.add(value);
    shiftUp(arr.length - 1,arr);
  }

  void shiftUp(int index,List<int>arr) {
    if (index <= 0) return;

    int parentIndex = (index - 1) ~/ 2;

    if (arr[index] < arr[parentIndex]) {
      swap(index, parentIndex,arr);
      shiftUp(parentIndex,arr);
    }
  }

  void swap(int i, int j,List<int>arr) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }


// void buildHeap(List<int>arr){
//   int length = arr.length;
//   for(int i = (length~/2)-1;i>=0;i--){
//     heapify(arr, length, i);
//   }
// }
// void heapify(List<int>arr,length,index){
// int largest = index;
// int leftChild = index*2+1;
// int rightChild = index*2+2;

// if(leftChild<length && arr[leftChild]>arr[largest]){
//   largest = leftChild;
// }
// if(rightChild<length && arr[rightChild]>arr[largest]){
//   largest = rightChild;
// }
// if(largest!=index){
//   int temp = arr[largest];
//   arr[largest]=arr[index];
//   arr[index]=temp;
//   heapify(arr, length, largest);
// }
// }
class Heap{

  List<int>? heap=[1, 2, 41, 48, 948, 288, 1000, 83];

  Heap() {
    heap = [];
  }

  void insert(int value) {
    heap?.add(value);
    shiftUp(heap!.length - 1);
  }

  void shiftUp(int index) {
    if (index <= 0) return;
    int parentIndex = (index - 1) ~/ 2;
    if (heap![index] < heap![parentIndex]) {
      swap(index, parentIndex);
      shiftUp(parentIndex);
    }
  }

  void swap(int i, int j) {
    int temp = heap![i];
    heap![i] = heap![j];
    heap![j] = temp;
  }

  void printHeap() {
    print(heap);
  }

}

void main(List<String> args) {
  List<int> arr= [288,2,41,48,948,1,1000,83];
  SortHeapClassClass heap = SortHeapClassClass();
  heap.insert(1001,arr);

  heap.heapSort(arr);
  print(arr);
}

class SortHeapClass{
  void heapSort(List<int>arr){
    int length =arr.length;

    for(int i = (length~/2)-1;i>=0;i--){
      heapifysalisation(arr, length, i);
    }

    // for(int i=length-1;i>=0;i--){
    //   int temp = arr[0];
    //   arr[0]=arr[i];
    //   arr[i]=temp;
    //   heapifysalisation(arr, i, 0);
    // }
  }

  void heapifysalisation(List<int>arr,int length,int index){
    int largest = index;
    int leftChild = index*2+1;
    int rightChild = index*2+2;

    if(leftChild<length&&arr[leftChild]>arr[largest]){
      largest = leftChild;
    }
    if(rightChild<length && arr[rightChild]>arr[largest]){
      largest = rightChild;
    }
    if(largest!=index){
      int temp = arr[largest];
      arr[largest] = arr[index];
      arr[index] = temp;
      heapifysalisation(arr, length, largest);
    }
  }
}

class SortHeapClassClass{
  void insert(int value,List<int>arr) {
    arr.add(value);
    shiftUp(arr.length - 1,arr);
  }

  void shiftUp(int index,List<int>arr) {
    
    if (index <= 0) return;

    int parentIndex = (index - 1) ~/ 2;

    if (arr[index] < arr[parentIndex]) {
      swap(index, parentIndex,arr);
      shiftUp(parentIndex,arr);
    }
  }

  void swap(int i, int j,List<int>arr) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
  void heapSort(List<int>arr){
    int length = arr.length;
    for(int i = (length~/2)-1;i>=0;i--){
      heapifyyy(arr,length,i);
    }
    // for(int i =length-1;i>=0;i--){
    //   int temp = arr[i];
    //   arr[i]=arr[0];
    //   arr[0]=temp;
    //   heapifyyy(arr, i, 0);
    // }
  }
  
  void heapifyyy(List<int> arr,int length,int index ) {
    int largest = index;
    int leftChild = index*2+1;
    int rightChild = index*2+2;
    if(leftChild<length&&arr[leftChild]>arr[largest]){
      largest = leftChild;
    }
    if(rightChild<length && arr[rightChild]>arr[largest]){
      largest = rightChild;
    }

    if(largest!=index){
      int temp = arr[index];
      arr[index] = arr[largest];
      arr[largest] = temp;
      heapify(arr, length, largest);
    }

  }
}