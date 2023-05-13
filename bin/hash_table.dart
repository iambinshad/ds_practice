import 'dart:collection';

void main(List<String> args) {

  Map<int, String>myHashTable = {
    33:"binshad",
    39:"dks",
    329:"dksaht"
  };

  print(myHashTable[39]);
  myHashTable[87]="393";
  myHashTable[33] = "Mohammed Binshad";
  // myHashTable.update(33 , (value) =>"Mohammed Binshad");

  print(myHashTable[33]);


}