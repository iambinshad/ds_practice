// void main(List<String> args) {
//   List<int> arr = [1, 7, 3, 2];
//   int n = arr[0];
//   int k = 0;
//   int m = 0;
//   for (int i = k, j = arr[m]; i <= n; i++) {
//     print(arr[j]);
//     if (arr[i] == n && n == i) {
//       n = arr[i + 1];
//       k = 0;
//     }
//     if (arr[i] != n) {
//       m++;
//     }
//     if (arr[i] == n) {
//       m = 0;
//     }

//
//   }
// }

void main(List<String> args) {
  List<int> arr = [8, 7, 3, 2];
int n = 1;
int k = 0;
int m = 0;
  for (int i=0; i <= n; i++,n++) {
    if(arr[i]==n){
      n=0;
      k=0;
    }
    print(arr[k]);

    // for (int j = 1; j <= arr[i]; j++) {
    //   print(arr[i]);
    // }
  }
}
