class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

class LinkuMon{
  Node? head;
  Node? tail;

void delete(int data){
  Node? temp = head, previous;
  if(temp!=null&&temp.data==data){
    head = head?.next;
    return;
  }
  while (temp!=null&&temp.data!=data) {
    previous = temp;
    temp = temp.next;
  }
  if(temp==null){
    return;
  }
  if(temp == tail){
    tail = previous;
    tail?.next = null;
    return;
  }
  previous?.next = temp.next;
}

  void displayLinkedList(){

    if(head==null){
      print("Linked List is empty!");
      return;
    }else{
      Node? temp = head;
      while (temp!=null) {
        print(temp.data);
        temp =temp.next;
      }
    }

  }
  void addNode(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
    tail = newNode;
  }
  void addNodeAtEnd(int data){
    Node newNode = Node(data);
    if(head !=null){
      tail?.next = newNode;
      tail = newNode;
      tail?.next = null;
    }

  }
  void addNodeAtBegning(int data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
    }else{
      newNode.next = head;
      head = newNode;
    }
  }
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
  // Future<void> wait ()async{
  //   await Future.delayed(Duration(milliseconds: 2000));
  //   print(4);
  // }

  // void wating(){
  //   print(1);
  //   print(2);
  //    wait();
  //   print(3);
  // }
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
LinkuMon obj = LinkuMon();
obj.addNode(10);
obj.addNode(38);
obj.addNode(317);
obj.displayLinkedList();
print("\n");
obj.delete(11);
obj.displayLinkedList();
 
}
