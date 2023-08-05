
class Binary {

  List<int> arr = [2000,3,483,4];

  void sorting() {
   for (int i = 0; i < arr.length; i++)   
{  
for (int j = i + 1; j < arr.length; j++)   
{  
int tmp = 0;  
if (arr[i] > arr[j])   
{  
tmp = arr[i];  
arr[i] = arr[j];  
arr[j] = tmp;  
}  
} 
print(arr[i]); 
}  
  }
  int binarSearch(int target,List<int>list){
    sorting();
    int min = 0;
    int max = list.length-1;
    while (min<=max) {
      int mid = (min+max)~/2;
      int guess = list[mid];
      if(guess==target){
        return mid;
      }else if(guess>target){
        max =mid-1;
      }else{
        min=mid+1;
      }
    }
    return -1;
  }
  
// int binarySearch(List<int> list, int target) {
//  sorting();
//   int min = 0;
//   int max = list.length - 1;
  
//   while (min <= max) {
//     int mid = ((min + max) / 2).floor();
//     int guess = list[mid];
    
//     if (guess == target) {
//       return mid;
//     } else if (guess < target) {
//       min = mid + 1;
//     } else {
//       max = mid - 1;
//     }
//   }
  
//   return -1; 
// }
void largestNum(){

  int small = arr[0]; 
    for (int i = 1; i <arr.length-1; i++) {
        if (arr[i] < small) {
            small = arr[i];
        }
    }
  print(small);

}
}

void main() {
  Binary obj = Binary();
  // List<int> data = [349,32,4,3,24,83];
  // int resu=obj.binarySearch(obj.arr, 4);
  // print(resu);
 
  // print('');
  // int? result = obj.binarySearch(obj.arr,1);
  // print(result);
}
