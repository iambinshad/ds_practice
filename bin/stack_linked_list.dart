class Node {
  int? data;
  Node? next;

  Node(int this.data);
}

void main(List<String> args) {
  Stack obj = Stack();

  obj.push(10);
  obj.push(28);
  obj.push(128);
  obj.push(1383);
  obj.editStackElementByPostion(2, 127);

  obj.displayStack();
}

class Stack {
  Node? top;
  void push(int data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void displayStack() {
    Node? current = top;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }


  void pop() {
    if (top == null) {
      print("Stack Underflow");
      return;
    } else {
      top = top?.next;
    }
  }

  void deleteMidElement() {
    Node? data, previous;

    if (top == null) {
      print('stack is empty');
    } else {
      Node? current = top;
      int count = 0;
      while (current != null) {
        current = current.next;
        count++;
      }
      if (count >= 3) {
        int mid = (count / 2).floor();
        data = top;
        for (int i = 1; i <= mid; i++) {
          previous = data;
          data = data?.next;
        }
        previous?.next = data?.next;
      } else {
        print('there is no mid element');
      }
    }
  }

  void editStackElement(int element, int data) {
    if (top == null) {
      return;
    } else {
      Node? current = top;
      while (current != null && current.data != element) {
        current = current.next;
      }
      current?.data = data;
    }
  }

  void editStackElementByPostion(int posi, int data) {
    if (top == null) {
      return;
    } else {
      Node? current = top;

      for (int i = 1; i <= posi; i++) {
        current = current?.next;
      }
      current?.data = data;
    }
  }
}
