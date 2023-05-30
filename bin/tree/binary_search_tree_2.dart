class Node {
  int? data;
  Node? left, right;

  Node(this.data);
}

class BinarSearchClass {
  Node? root;

  void insert(int data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data);
      return;
    }
    while (true) {
      if (currentNode!.data! > data) {
        if (currentNode.left == null) {
          currentNode.left = Node(data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }
  //  bool contains(int data){
  //   Node? currentNode =root;
  //   while (currentNode!=null) {
  //     if(currentNode.data!>data){
  //       currentNode = currentNode.left;
  //     }else if(currentNode.data!<data){
  //       currentNode = currentNode.right;
  //     }else{
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  bool contain(int target) {
    Node? currentNode = root;

    if (root == null) {
      print("Binary tree is empty");
      return false;
    }
    while (currentNode != null) {
      if (currentNode.data! > target) {
        currentNode = currentNode.left;
      } else if (currentNode.data! < target) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }
}
void main(List<String> args) {
  BinarSearchClass binarSearchClass = BinarSearchClass();
  binarSearchClass.insert(28);
  binarSearchClass.insert(27);
  binarSearchClass.insert(29);
  print(binarSearchClass.contain(27));
}