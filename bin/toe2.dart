// void unique() {
//   int c = 0;

//   List<int> arr = [1, 2, 1, 2, 3];

//   for (int i = 0; i < arr.length; i++) {
//     c = 1;

//     for (int j = i + 1; j < arr.length; j++) {
//       if (arr[i] == arr[j]) {
//         c++;
//       }
//     }
//     if(c == 1){
//       print()
//     }
//   }
// }

import 'dart:developer';

class A with C, Z {
  String method() {
    return 'iam method in class A';
  }
}

class B {
  
  method2() {
    print("Iam method in class B");
  }
}

mixin C {
  
  String method3() {
    return 'Iam method in class C';
  }
}
mixin Z {
  String method5() {
    return 'Iam method in class z';
  }
}

// class D{

// }

// void main(List<String> args) {
// List<int> arr = [];

// arr.forEach((element) {print(element);});
// for (var element in arr) {
//   print(element);
// }
// }

class Person {
  String? name;
  int? age;

  void sayHello() {
    print("Hello, my name is $name, and I'm $age years old.");
  }
}

void main() {
  // Person person = Person();

  // person
  //   ..name = "John"
  //   ..age = 30
  //   ..sayHello(); // Chaining property assignmen(ts and method call using cascade operator
  // print(reverse());
  Stack obj = Stack();
  // obj.push(120);
  // obj.push(29);
  // obj.push(283);
  // print(obj.printStack());
  print(obj.ispalindrome('Malayalam'));
}

String reverse() {
  String str = 'binshad';
  List<String> arr = str.split('');
  int end = arr.length - 1;

  for (var i = 0; i < arr.length / 2; i++) {
    String temp = arr[i];
    arr[i] = arr[end];
    arr[end] = temp;
    end--;
  }
  String joinedString = arr.join();
  return joinedString;
}

class Node {
  String Data;
  Node? next;
  Node(this.Data);
}

class Stack {
  Node? top;

  void push(String data) {
    Node newNode = Node(data);

    if (top == null) {
      top = newNode;
      return;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  String? pop() {
    if (top == null) {
      print('Stack underflow');
      return 'sry';
    } else {
      String data= top!.Data;
      top = top?.next;
      return data;
    }
  }

  bool ispalindrome(String str){

  String cleanStr = str.toLowerCase();

    for (var i = 0; i < cleanStr.length; i++) {
      push(cleanStr[i]);
    }


    for (var i = 0; i < cleanStr.length; i++) {
      
      if(pop()!=cleanStr[i]){
        return false;
      }
    }
    return true;
  }
}
