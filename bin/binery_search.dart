class Binary {

  List<int> arr = [3, 0, 2, 4, 1];

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
int binarySearch(List<int> list, int target) {
  int min = 0;
  int max = list.length - 1;
  
  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    int guess = list[mid];
    
    if (guess == target) {
      return mid;
    } else if (guess < target) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  
  return -1; // If the target is not found in the list
}
}

void main() {
  Binary obj = Binary();
  obj.sorting();
  print('');
  int? result = obj.binarySearch(obj.arr,1);
  print(result);

}
