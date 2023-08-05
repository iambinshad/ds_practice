

class Program{


  void functionm(){
      List<String> inputList =  ['kasol', 'kasol', 'manali', 'delhi', 'delhi', 'manali','kasol'];

    Map<dynamic,dynamic> frequencyMap ={};

    for(String item in inputList){
      if(frequencyMap.containsKey(item)){
        frequencyMap[item] += 1;
      }else{
        frequencyMap[item] =1;
      }
    }
    frequencyMap.forEach((key, value) {
      print("$key : $value");
    });
  }
}
void main(List<String> args) {
  Program obj = Program();
  obj.functionm();
}