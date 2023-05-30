// import 'dart:collection';

// class TrieNode {
//   Map<String, TrieNode?> children = HashMap();
// }

// class Trie {
//   TrieNode root = TrieNode();
//   String endSymbol = "*";

//   Trie(String str) {
//     populateSuffixTrie(str);
//   }

//   void populateSuffixTrie(String str) {
//     for (int i = 0; i < str.length; i++) {
//       insertSubstringStartingAt(i, str);
//     }
//   }

//   void insertSubstringStartingAt(int index, String str) {
//     TrieNode node = root;
//     for (int i = index; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.children.containsKey(letter)) {
//         TrieNode newNode = TrieNode();
//         node.children[letter] = newNode;
//       }
//       node = node.children[letter]!;
//     }
//     node.children[endSymbol]=null;
//   }

//   bool contains(String str) {
//     TrieNode node = root;
//     for (int i = 0; i < str.length; i++) {
//       String letter = str[i];
//       if (!node.children.containsKey(letter)) {
//         return false;
//       }
//       node = node.children[letter]!;
//     }

//     return node.children.containsKey(endSymbol);
//   }
// }
import 'dart:collection';

void main(List<String> args) {
  Trie trie = Trie("binshad");
  print(trie.contains("inshad"));
}

class TrieNode{
  Map<String,TrieNode?>children = HashMap();
}

class Trie{
  TrieNode root = TrieNode();

  String endSymbol = "*";
  Trie(String str){
    populateSuffixTrie(str);

  }

  void populateSuffixTrie(String str){
    for(int i=0;i<str.length;i++){
    insertSubStringStartingAt(str, i);

    }
  }

  void insertSubStringStartingAt(String str,index){
    TrieNode node=root;
    for(int i =index; i<str.length;i++){

      String letter = str[i];
      if(!node.children.containsKey(letter)){
       TrieNode newNode = TrieNode();
       node.children[letter]=newNode;
      }
      node = node.children[letter]!;
    }
    node.children[endSymbol]=null;
  }

  bool contains(String str){
    TrieNode node = root;
    for(int i = 0;i<str.length;i++){
      String letter = str[i];
      if(!node.children.containsKey(letter)){
        return false;
      }
      node = node.children[letter]!;
    }
    return node.children.containsKey(endSymbol);
  }
}

