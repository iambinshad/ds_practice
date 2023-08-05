// import 'package:ds_practice/ds_practice.dart' as ds_practice;

// var checked = [];
//   void main(List<String> arguments) {

//  var array = [3,1,2,8,2,4,3,4,2];

//  int i,count= 0,j, mostCount = 0,n=9;


//  for(i=0;i<n;i++){
//   if(array[i]%2==0){
    
//     for(j=i;j<=n-i;j++){
//        bool result =check(array[i]);

//       if(array[i]==array[j] && result!=true ){
//         count++;
//       }
//     }
//     if(count>=mostCount){
//       mostCount = count;
//     }
//   }

//  }
//  print(mostCount);


// }

// bool check(value){
// bool result = false;
//   for (var i = 0; i < checked.length; i++) {
//     if(value==checked[i]){
//       result = true;
//       break;
//     }
//   }
//   return result;
// }

class Array{

  
   void revese(List data){
      

      



   
    int n = data.length;
    int end = n-1;
    for(int i=0;i<=n/2;i++){
    int temp = data[i];
    data[i]= data[end];
    data[end]=temp;
    end--;
    }
   print(data);


  }

  void reverse(List data){
    int n=data.length;
  int end = n - 1;  
    for(int i = 0; i < n/2; i++)  
    {  
       int temp = data[i];  
        data[i] = data[end];  
        data[end] = temp;  
        end--;  
    }  
  

      print(data);
    
  }
}

class Node{
  int? data;
  Node? next;

  Node( int this.data);
}
class SLinked{
  Node? head;
  Node? tail;

  void addNode(int data){
    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail?.next = newNode;
    }
    tail = newNode;
  }

void insertAfter(int pos,int data){
  Node? newNode = Node(data);
  Node? temp = head;
  while(temp!=null&&temp.data!=pos){
    temp = temp.next;
  }
  if(temp ==null){
    return;
  }
  if(temp == tail){
    tail?.next = newNode;
    tail = newNode;
    return;
  }

  newNode.next=temp.next;
  temp.next = newNode;

}

void insertBefore(int pos,int data){
  Node newNode = Node(data);
  Node? temp = head;

  if(temp !=null && pos ==temp.data){
    newNode.next = head;
    head = newNode;
  }

  while(temp!=null&& temp.data !=pos){
    temp = temp.next;
  }

}
  void printAll(){
    Node? temp = head;
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }
  void deleteNode(int data){
    Node? temp = head, previous;
     if(temp !=null&& data == temp.data){
      head = temp.next;
      return;
    }
    while(temp !=null && temp.data != data){
      previous = temp;
      temp = temp.next;
    }

    if(temp==null){
      return;
    }
    if(data == tail?.data){
      previous = tail;
      tail?.next = null;
      return;
    }
    previous?.next = temp.next;
   


  }
}
void main(){
  // List<int>data = [1,2,3,4,5,6];
  // Array arr = Array();
  // arr.revese(data);
  SLinked node = SLinked();
  node.addNode(38);
  node.addNode(28);
  node.addNode(10);
  node.addNode(1);
  node.printAll();
  node.insertBefore(38, 11);
  print("");
  node.printAll();

}



