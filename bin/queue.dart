class Node {
  Node? next;
  int? data;
  Node(int this.data);
}

class Queue {
  Node? front;
  Node? rear;

  void displayQueue() {
    Node? current = front;
    if (current == null) {
      print("empty");
    }

    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  void enqueue(int data) {
    Node newNode = Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    if (front == null) {
      print("queue is empty");
      return;
    }
    front = front?.next;
    if (front == null) {
      rear == null;
    }
  }
}

void main(List<String> args) {
  Queue obj = Queue();
  obj.enqueue(10);
  obj.enqueue(20);
  obj.enqueue(30);
  obj.dequeue();
  obj.enqueue(40);
  obj.displayQueue();
}
 
 class Queue2{
  Node? front;
   Node? rear;

   void enqueue(int data){
    Node newNode = Node(data);
    if(rear==null){
      front = rear = newNode;
    }else{
      rear?.next = newNode;
      rear = newNode;
    }
   }
 }