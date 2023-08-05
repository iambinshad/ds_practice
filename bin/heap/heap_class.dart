import 'heap_build.dart';

class HeapClass{
    List<int>arr = [28,83,193,4,1,4,14,4,1];

  void buildHeap(){
    int length = arr.length;
    for(int i = (length~/2)-1;i>=0;i--){
      heapifyyyyy(arr, length, i);
    }
  }
  void insert(int data){
    arr.add(data);
    shiftUp(arr.length-1);
  }
  void shiftUp(int index){
    if(index<=0)return;
    int parentIndex = (index-1)~/2;
    if(arr[index]<arr[parentIndex]){
      int temp = arr[index];
      arr[index]=arr[parentIndex];
      arr[parentIndex]=temp;
      shiftUp(parentIndex);
    }
  }
  void heapSort(){
    int length = arr.length;
    for(int i = length-1;i>=0;i--){
      int temp = arr[0];
      arr[0]=arr[i];
      arr[i]=temp;
      heapifyyyyy(arr, i, 0);
    }
  }

  void heapifyyyyy(List<int>arr,int length,int index){
    int largest = index;
    int leftChild = index*2+1;
    int rightChild = index*2+2;
    if(leftChild<length&& arr[leftChild]>arr[largest]){
      largest= leftChild;
    }
    if(rightChild<length && arr[rightChild]>arr[largest]){
      largest = rightChild;
    }
    if(largest!=index){
      int temp = arr[index];
      arr[index] = arr[largest];
      arr[largest]= temp;
      heapifyyyyy(arr, length, largest);
    }
  }

}
void main(List<String> args) {
  HeapClass obj = HeapClass();
  // SortHeapClassClass inse =SortHeapClassClass();
  obj.buildHeap();
  print(obj.arr);
  obj.insert(1001);
  print(obj.arr);
  obj.heapSort();
  print(obj.arr);
  
}