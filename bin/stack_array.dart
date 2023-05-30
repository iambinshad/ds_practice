void main(List<String> args) {
  Stack obj = Stack();
  obj.push(109);
  obj.push(38);
  obj.push(29);
  obj.popSpecifiedPosition(3);
  obj.displayStack();
}

class Stack {
  int top = -1;
  var arr = List<int>.filled(3, 0);

  void push(data) {
    top++;
    arr[top] = data;
  }

  void pop() {
    int deletingElement = top;
    top--;
    print("$deletingElement position is deleted from stack");
  }

  void displayStack() {
    for (var i = top; i >= 0; i--) {
      print(arr[i]);
    }
  }

  void popSpecifiedPosition(pos) {
    if (top == -1) {
      print("stack is empty");
    } else {
      for (var i = pos - 1; i < top; i++) {
        arr[i] = arr[i + 1];
      }
      top--;
    }
  }

  void popspecifiedElement(data) {
    if (top == -1) {
      print("stack is empty");
    } else {
      int current = top;
      while (arr[current] != data && current - 1 != -1) {
        current--;
      }
      if (arr[current] == data) {
        for (int i = current; i < top; i++) {
          arr[i] = arr[i + 1];
        }
        top--;
      }
    }
  }

    void editElement(data) {
    if (top == -1) {
      print("stack is empty");
    } else {
      int current = top;
      while (arr[current] != data && current - 1 != -1) {
        current--;
      }
      if (arr[current] == data) {
        for (int i = current; i < top; i++) {
          arr[i] = arr[i + 1];
        }
        top--;
      }
    }
  }
}
