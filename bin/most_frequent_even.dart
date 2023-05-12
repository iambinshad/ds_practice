class MostFrequent{

  int findFrqent(List array){
    int count = 0;
    int mostCount = 0;
    int mostCountedNum = array[0];
    

    for (var i = 0; i < array.length; i++) {

      if(array[i]%2==0){
        count =1;
        for (var j = i+1; j <array.length-i; j++) {

          if(array[i]==array[j]){
            count++;
            array[j]=-1;
          }
          
        }
        if(count>=mostCount){
          if(array[i]<mostCountedNum){
            mostCountedNum = array[i];
          }
        }
      }
      
    }
    if(mostCountedNum!=null){
      return mostCountedNum;
    }else{
      return -1;
    }

  }
}
void main(List<String> args) {
  MostFrequent obj = MostFrequent();
  List<int> arr= [1,1,3,4,3,2,2,5,4,4,3,4,1,5,8,9,4];
  print(obj.findFrqent(arr));
}