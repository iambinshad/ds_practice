int search(List arr, int x) {
  int i;
  for (i = 0; i < arr.length; i++) {
    if (arr[i] == x) {
      return i;
    }
  }
  return -1;
}

int main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 40;

  int result = search(arr, x);
  (result == -1)
      ? print("Element is not present in array")
      : print(
          "Element is present at index ${result+1}",
        );
  return 0;
}
