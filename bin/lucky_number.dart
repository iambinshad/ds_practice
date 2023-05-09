class Lucky {
  List<int> arr = [3,2,1,5,2,3];
  int luckIndex = 0;
  List<int> luk = [];
  void findLucky() {
    for (var i = 0; i < arr.length; i++) {
      int count = 1;
      for (var j = i + 1; j < arr.length - i; j++) {
        if (arr[i] == arr[j]) {
          count++;
        }
      }
      if (count == arr[i]) {
        luk.add(arr[i]);
        luckIndex++;
      }
    }

    for (var i = 0; i < luckIndex; i++) {
      print(luk[i]);
    }
  }
}

void main(List<String> args) {
  Lucky obj = Lucky();
  obj.findLucky();
}
