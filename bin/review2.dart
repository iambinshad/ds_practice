class Sorting {
  List selectionSort(List arr) {
    int n = arr.length;
    for (int i = 0; i < n - 1; i++) {
      int minind = i;
      for (int j = i + 1; j < n; j++) {
        if (arr[minind] > arr[j]) {
          minind = j;
          j--;
        }
      }
      int temp = arr[minind];
      arr[minind] = arr[i];
      arr[i] = temp;
    }

    return arr;
  }
}

void main(List<String> args) {
  List<int> arr = [38, 4, -3, 5, -2, 6];

  Sorting obj = Sorting();
  print(obj.selectionSort(arr));
}
