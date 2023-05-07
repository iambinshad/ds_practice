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
  
    for (var i = 0; i < data.length; i++) {
      print(data[i]);
    }


  }
}

void main(){
  List<int>data = [1,2,3,4,5,6];
  Array arr = Array();
  arr.reverse(data);
}



