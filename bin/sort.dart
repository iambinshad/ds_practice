
void main(List<String> args) {
  List<int> arr = [3, 2, 5, 3, 84, 27, 213];
  print(selectionSortttt(arr));
}

List insetionSort(List arr) {
  for (int i = 1; i < arr.length - 1; i++) {
    int temp = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > temp) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = temp;
  }
  return arr;
}

List bubbleSort(List arr) {
  for (int i = 0; i < arr.length; i++) {
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] > arr[j]) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}

List selectionSort(List arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    int minIdx = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[minIdx] > arr[j]) {
        minIdx = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIdx];
    arr[minIdx] = temp;
  }
  return arr;
}

// List insertionSort(List arr){
//   for(int i=1;i<arr.length-1;i++){
//     int temp = arr[i];
//     int j= i-1;
//     while (j>=0 && arr[j]>temp) {
//       arr[j+1]=arr[j];
//       j--;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// List insertionSort(List arr){
//   for(int i=1;i<arr.length-1;i++){
//     int temp = arr[i];
//     int j = i-1;
//     while (j>=0&&arr[j]>temp) {
//       arr[j+1]=arr[j];
//       j--;
//     }
//     arr[j+1]=temp;
//   }
//   return arr;
// }

// List selectionSort(List arr){

//   int n = arr.length;
//   for(int i=0;i<n-1;i++){
//     int minIdx = i;
//     for(int j=i+1;j<n;j++){
//       if(arr[minIdx]>arr[j]){
//         minIdx=j;
//       }
//     }
//     int temp = arr[i];
//     arr[i]=arr[minIdx];
//     arr[minIdx]=temp;
//   }
// return arr;
// }


List insertIONSort(List arr){
  for(int i=1;i<arr.length-1;i++){
    int temp = arr[i];
    int j = i-1;
    while(j>=0 && arr[j]>temp){
      arr[j+1]=arr[j];
      j--;
    }
    arr[j+1]=temp;
  }
return arr;
}

List selectionSortttt(List arr){
  int n = arr.length;
  for(int i=0;i<n-1;i++){
    int minIdx = i;
    for(int j=i+1;j<n;j++){
      if(arr[minIdx]>arr[j]){
        minIdx=j;
      }
    }
    int temp = arr[minIdx];
    arr[minIdx]=arr[i];
    arr[i]=temp;
  }
  return arr;
}