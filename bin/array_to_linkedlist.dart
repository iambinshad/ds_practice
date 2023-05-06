class Node {
  int data;
  Node? next;
  
  Node(this.data); 
}

Node? arrayToLinkedList(List<int>? array) {
  if(array == null || array.isEmpty) {
    return null;
  }
  
  Node head = Node(array[0]);
  Node current = head;
  
  for(int i = 1; i < array.length; i++) {
    Node newNode = Node(array[i]);
    current.next = newNode;
    current = newNode;
  }
  
  return head;
}

void main(List<String> args) {
//   int data = 2;
// List<int> array = [1, 2, 3, 4, 5];
// Node? head = arrayToLinkedList(array);
// Node node = Node(data);
// print(node.data);
 String message = "The quick brown fox jumps over the lazy dog";
  String words = message.replaceAll(" ","");
  print(words); 
  int i=9;
  words[i];

}