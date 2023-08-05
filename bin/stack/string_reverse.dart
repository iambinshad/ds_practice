class Node{
  String? data;
  Node? next;
  Node(this.data);
}

class StackDs{
  Node? top;
  String word = "Binshad";

  void push(String data){
    Node newNode = Node(data);
    if(top==null){
      top = Node(data);
    }else{
      newNode.next = top;
      top = newNode;
    }
    
  }
  String? pop(){
    if(top == null){
      print("Stack Underflow");
    }else{
      String? poppedData = top?.data;
      top = top?.next;
      return poppedData;
    }
    return null;
  }
}
void main(List<String> args) {
  // List<String>arr = [];
  // StackDs obj = StackDs();
  // for (var i = 0; i < obj.word.length; i++) {
  //   obj.push(obj.word[i]);
  // }
  // for (var i = 0; i < obj.word.length; i++) {
  //   arr.add(obj.pop()!);
  // }
  // print(arr.join());
  
}