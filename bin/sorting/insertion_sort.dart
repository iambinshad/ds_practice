
// class InsertionSort {
//   List insertion(List array) {
//     for (var i = 1; i < array.length; i++) {
//       int temp = array[i];
//       int j = i - 1;
//       while (j>= 0 && array[j] > temp) {
//         array[j + 1] = array[j];
//         j--;
//       }
//       array[j + 1] = temp;
//     }
//     return array;
//   }
// }

void main(List<String> args) {
  InsertionSort obj = InsertionSort();
  List<int> arr = [5, 7, 4, 3, 10, 1];
  print(obj.insertion(arr));
}

// class InsertionSort {
//   List<dynamic> insertion(List arr) {
//     for (int i = 1; i < arr.length; i++) {
//       int temp = arr[i];
//       int j = i - 1;
//       while (j >= 0 && arr[j] > temp) {
//         arr[j + 1] = arr[j];
//         j--;
//       }
//       arr[j + 1] = temp;
//     }
//     return arr;
//   }
// }

class InsertionSort{
  List<dynamic> insertion(List arra){
    for(int i=1;i<arra.length;i++){
      int temp = arra[i];
      int j= i-1;
      while (j>=0 && arra[j]>temp) {
        arra[j+1]=arra[j];
        j--;
      }
      arra[j+1]=temp;
    }
    return arra;
  }
}
