class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class SlinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }

    tail = newNode;

  }
  void addNodeAtEnd(int data){
    Node newNode = Node(data);
    if(head != null){
      tail?.next = newNode;
      tail = newNode;
      tail?.next= null;
    }

  }
  void addNodeAtBegining(int data){
    Node newNode = Node(data);
    
    if(head!=null){
      newNode.next = head;
      head = newNode;
    }
  }

  void display() {
    if (head == null) {
      print("empty");
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void delete(int data) {
    Node? temp = head, previous;
    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != data) {
      previous = temp;
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = previous;
      tail?.next = null;
      return;
    }

    previous?.next = temp.next;
  }

  void insertAfter(int nextTo, int data){
    Node newNode = Node(data);
    Node? temp = head;

    while (temp !=null && temp.data != nextTo) {
      temp = temp.next;
    }

    if(temp == null){
      return;
    }

    if(temp == tail){
      tail?.next = newNode;
      tail = newNode;
      return;
    }

    newNode.next = temp.next;
    temp.next = newNode;
  }
}

void main() {
  SlinkedList list = SlinkedList();

  list.addNode(38);
  list.addNode(28);
  list.addNode(1);
  list.insertAfter(1, 20);
  list.display();
  print("  ");
  list.addNodeAtBegining(10);
  list.display();
  list.addNodeAtEnd(100);
  list.display();
}
