class Heap {
  List<int> heap= [];

  Heap() {
    heap = [];
  }

  void buildHeap(List<int> arr) {
    heap = List.from(arr);
    for (int i = (heap.length ~/ 2) - 1; i >= 0; i--) {
      heapify(i);
    }
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  int remove() {
    if (heap.isEmpty) {
      throw Exception("Heap is empty!");
    }

    int root = heap[0];
    int lastElement = heap.removeLast();
    
    if (heap.isNotEmpty) {
      heap[0] = lastElement;
      heapify(0);
    }

    return root;
  }

  void heapify(int index) {
    int smallest = index;
    int leftChild = 2 * index + 1;
    int rightChild = 2 * index + 2;

    if (leftChild < heap.length && heap[leftChild] > heap[smallest]) {
      smallest = leftChild;
    }

    if (rightChild < heap.length && heap[rightChild] > heap[smallest]) {
      smallest = rightChild;
    }

    if (smallest != index) {
      swap(index, smallest);
      heapify(smallest);
    }
  }

  void shiftUp(int index) {
    if (index <= 0) return;

    int parentIndex = (index - 1) ~/ 2;

    if (heap[index] < heap[parentIndex]) {
      swap(index, parentIndex);
      shiftUp(parentIndex);
    }
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  void printHeap() {
    print(heap);
  }
}
void main(List<String> args) {
  List<int> arr = [38,29,49,2,4];
  Heap obj = Heap();
  obj.buildHeap(arr);
  obj.insert(1000);
  obj.remove();
  obj.printHeap();
}