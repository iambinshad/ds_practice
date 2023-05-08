class BinerySearch{
 List <int> list = [23,4,5,2,8,3]; 
  void sorting(){

    for( int i=0;i<list.length;i++){

      for(int j=i+1;j<list.length;j++){
        if(list[i]>list[j]){
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    }

  }

  int search(int target){
    sorting();
    int min = 0;
    int max = list.length-1;

    int mid = min+max ~/2;

    while(min<=max){
      if(list[mid]== target){
       return mid;
      }else if(list[mid]>target){
        min = mid+1;
      }else if(list[mid]<target){
        min = mid -1;
      }
    }
    return -1;

  }
}