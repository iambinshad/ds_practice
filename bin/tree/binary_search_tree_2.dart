class Node {
  int? data;
  Node? left, right;

  Node(this.data);
}

class BinarSearchClass {
  Node? root;

  int? findMaxValue(Node? node) {
  if (node == null) {
    return null;
  } else if (node.right == null) {
    return node.data;
  } else {
    return findMaxValue(node.right);
  }
}

int? findMinValue(Node root){
  if(root == null){
    return null;
  }else if(root.left==null){
    return root.data;
  }else{
    return findMinValue(root.left!);
  }
}
  bool contain(int target) {
    Node? currentNode = root;
    if (currentNode == null) {
      print("binary search tree is empty");
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
}

void main(List<String> args) {
  BinarSearchClass binarSearchClass = BinarSearchClass();
  binarSearchClass.insert(28);
  binarSearchClass.insert(27);
  binarSearchClass.insert(29);
  print(binarSearchClass.contain(29));
  print(binarSearchClass.findMaxValue(binarSearchClass.root));
    print(binarSearchClass.findMinValue(binarSearchClass.root!));

}
