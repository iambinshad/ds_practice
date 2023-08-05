
class Node{
  int? data;
  Node? right,left;
  Node(this.data);
}

int? findMinValue(Node root){
  if(root==null){
    return null ;
  }else if(root.left==null){
    return root.data;
  }else{
    findMinValue(root.left!);
  }
return null;
}
class BinarySearch{
  Node? root;
  void inser(int data){
  Node? currentNode = root;
  if(currentNode == null){
    root = Node(data);
    return;
  }
  while (true) {

    if(currentNode!.data !>data){
      if(currentNode.left== null){
        currentNode.left = Node(data);
        break;
      }else{
        currentNode = currentNode.left;
      }
    }else{
      if(currentNode.right == null){
        currentNode.right = Node(data);
        break;
      }else{
        currentNode = currentNode.right;
      }
    }


    
  }
}
}

class ListMethodsChecking{

  List<dynamic> listtts = ['old','gold','bold','sold'];
  List<int> arr = [38,208,283];
  
void methoddd()async{

listtts.insertAll(2, ['crowld','showld']); // [old, new, new, old, old]
print(listtts);

}
}
void main() {
  ListMethodsChecking obj = ListMethodsChecking();
  obj.methoddd();
}
