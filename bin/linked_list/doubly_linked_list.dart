class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(int this.data);
}

class DLinkedList {
  Node? head;
  Node? tail;

  void addNode(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }

    tail = newNode;
  }

  void display() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void delete(int data) {
    Node? temp = head;

    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }

    while (temp != null && temp.data != data) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail = temp.prev;
      tail?.next = null;
    }
    temp.prev?.next = temp.next;
    temp.next?.prev = temp.prev;
  }

  void inserAfter(int data, int prevPosi) {
    Node newNode = Node(data);
    Node? temp = head;

    while (temp != null && temp.data != prevPosi) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail?.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
    newNode.prev = temp;
    temp.next = newNode;
    newNode.next?.prev = newNode;
  }

  void insertBefore(int data, int nextPositon) {
  
    Node? currentNode = head;
     while (currentNode != null) {
      if (currentNode.data == nextPositon) {
        Node newNode = Node(data);
        newNode.prev = currentNode.prev;
        newNode.next = currentNode;
        if (currentNode.prev == null) {
          head = newNode;
        } else {
          currentNode.prev?.next = newNode;
        }
        currentNode.prev = newNode;
        return;
      }
      currentNode = currentNode.next;
    }
  }

  void removeDuplicates(){
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      while (next !=null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;
      if(next == tail){
        tail = current;
      
      }
      current = next;
    }

  }
}

void main(List<String> args) {
  DLinkedList list = DLinkedList();
  list.addNode(7);
  list.addNode(7);
  list.addNode(9);
  list.addNode(2);
  list.addNode(2);
  list.addNode(1);
  list.addNode(1);
  list.display();
  print("\n");
  list.removeDuplicates();
  list.display();
}
