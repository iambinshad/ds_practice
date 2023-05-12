// List<dynamic> quickSort(List array) {
//   quickSortHelper(array, 0, array.length - 1);

//   return array;
// }

// void quickSortHelper(List array, int startIdx, int endIdx) {
//   if (startIdx >= endIdx) {
//     return;
//   }
//   int pivotIdx = startIdx;
//   int leftIdx = startIdx + 1;
//   int rightIdx = endIdx;

//   while (leftIdx <= rightIdx) {
//     if (array[leftIdx] > array[pivotIdx] && array[rightIdx] < array[pivotIdx]) {
//       swap(array, leftIdx, rightIdx);
//       leftIdx++;
//       rightIdx--; 
//     }
//     if (array[leftIdx] <= array[pivotIdx]) {
//       leftIdx++;
//     }
//     if (array[rightIdx] >= array[pivotIdx]) {
//       rightIdx--;
//     }
//   }
//   swap(array, rightIdx, pivotIdx);
//   quickSortHelper(array, startIdx, rightIdx - 1);
//   quickSortHelper(array, rightIdx + 1, endIdx);
// }

// void swap(List array, int i, int j) {
//   int temp = array[i];
//   array[i] = array[j];
//   array[j] = temp;
// }

List<dynamic> quickSort(List arr){

quickSortHelper(arr, 0, arr.length-1);
  return arr;

}
void quickSortHelper(List array, startIndex , endIndex){
  if(startIndex>=endIndex){
  return;
}
  int leftIndex = startIndex+1;
  int rightIndex = endIndex;
  int pivotindex = startIndex;

while (leftIndex<=rightIndex) {
  if(array[leftIndex] > array[pivotindex] && array[rightIndex] < array[pivotindex]){
    swap(array,leftIndex,rightIndex);
    leftIndex++;
    rightIndex--;
  }
  if(array[leftIndex]<=array[pivotindex]){
    leftIndex++;
  }
  if(array[rightIndex]>=array[pivotindex]){
    rightIndex--;
  }
}
swap(array, rightIndex, pivotindex);
quickSortHelper(array, startIndex, rightIndex-1);
quickSortHelper(array, rightIndex+1, endIndex);

}

void swap(List array, int i, int j) {
  int temp = array[i];
  array[i]=array[j];
  array[j]=temp;
}
void main(List<String> args) {
  List<int> arr = [5,4,7,10,22,3,9];

  print(quickSort(arr));
 
}
