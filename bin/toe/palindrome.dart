// class Coding{
// bool isPalindrome(String str) {
//   int i = 0;
//   int j = str.length - 1;

//   while (i < j) {
//     if (str[i] != str[j]) {
//       return false;
//     }
//     i++;
//     j--;
//   }

//   return true;
// }
// }
// void main() {
//   Coding code  =Coding();
//   String word = 'MALAYALAM';
//   if (code.isPalindrome(word)) {
//     print('$word is a palindrome.');
//   } else {
//     print('$word is not a palindrome.');
//   }
// }

class Palindrome {
  bool checkPalindrome(String str) {
    int i = 0;
    int j = str.length - 1;
    while (i < j) {
      if (str[i] != str[j]) {
        return false;
      }
      i++;
      j--;
    }
    return true;
  }
}

// void main(List<String> args) {
//   String word = 'MAALAM';
//   // Palindrome obj = Palindrome();
//   // if (pali(word)) {
//   //   print("$word is Palindrome");
//   // } else {
//   //   print("$word is not a palindrome");
//   // }
//   isPalindrome(word);
// }

bool pali(String str) {
  int i = 0;
  int j = str.length - 1;

  while (i < j) {
    if (str[i] != str[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

class Node {
  int data;
  Node? next;

  Node(this.data);
}

bool isPalindrome(Node? head) {
  List<int> values = [];

  Node? current = head;
  while (current != null) {
    values.add(current.data);
    current = current.next;
  }

  int start = 0;
  int end = values.length - 1;

  while (start < end) {
    if (values[start] != values[end]) {
      return false;
    }
    start++;
    end--;
  }

  return true;
}

void main() {
  // Create a sample linked list
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(2);
  head.next!.next!.next!.next = Node(1);

  // Check if the linked list is a palindrome
  bool result = isPalu(head);

  // Print the result
  if (result) {
    print("The linked list is a palindrome.");
  } else {
    print("The linked list is not a palindrome.");
  }
}

bool isPalu(Node? head) {
  List<int> list = [];

  Node? current = head;

  while (current != null) {
    list.add(current.data);
    current = current.next;
  }
  int start = 0;
  int end = list.length - 1;
  while (start < end) {
    if (list[start] != list[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;

  // int start = 0;
  // int end 0
}
