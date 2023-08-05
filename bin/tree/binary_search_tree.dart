class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

class BinarySearch {
  Node? root;

  bool contains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (currentNode.data > data) {
        currentNode = currentNode.left;
      } else if (currentNode.data < data) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int data) {
    removeHelper(data, root, null);
  }

  void removeHelper(int data, Node? currentNode, Node? parentNode) {
    while (currentNode != null) {
      if (data < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left!;
      } else if (data > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right!;
      } else {
        if (currentNode.left != null && currentNode.right != null) {
          currentNode.data = getMinValue(currentNode.right!);
          removeHelper(currentNode.data, currentNode.right!, currentNode);
        } else {
          if (parentNode == null) {
            if (currentNode.right == null) {
              root = currentNode.left;
            } else {
              root = currentNode.right;
            }
          } else {
            if (parentNode.left == currentNode) {
              if (currentNode.right == null) {
                parentNode.left = currentNode.left;
              } else {
                parentNode.left = currentNode.right;
              }
            } else {
              if (currentNode.right == null) {
                parentNode.right = currentNode.left;
              } else {
                parentNode.right = currentNode.right;
              }
            }
          }
        }
        break;
      }
    }
  }

  int getMinValue(Node currentNode) {
    if (currentNode.left == null) {
      return currentNode.data;
    } else {
      return getMinValue(currentNode.left!);
    }
  }

  void preOrder() {
    preOrderHelper(root!);
  }

  void preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      preOrderHelper(node.left);
      preOrderHelper(node.right);
    }
  }

  void inOrder() {
    inOrderHelper(root!);
  }

  void inOrderHelper(Node? node) {
    if (node != null) {
      inOrderHelper(node.left);
      print(node.data);
      inOrderHelper(node.right);
    }
  }

  void postOrder() {
    postOrderHelper(root!);
  }

  void postOrderHelper(Node? node) {
    if (node != null) {
      postOrderHelper(node.left);

      postOrderHelper(node.right);
      print(node.data);
    }
  }


  int findClosestValue(Node? root, double target) {
    int closest = root!.data;

    while (root != null) {
      if ((target - root.data).abs() < (target - closest).abs()) {
        closest = root.data;
      }

      if (target < root.data) {
        root = root.left;
      } else {
        root = root.right;
      }
    }

    return closest;
  }
}

void main(List<String> args) {
  BinarySearch binarySearch = BinarySearch();


  binarySearch.preOrder();
  print("\n");
  binarySearch.inOrder();
  print("\n");
  binarySearch.postOrder();
  print("\n");
  print(binarySearch.findClosestValue(binarySearch.root,28 ));
}
