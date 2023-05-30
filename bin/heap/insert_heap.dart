class Heap{

  List<int>? heap;

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
