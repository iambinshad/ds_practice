class Graph {
  Map<String, List<String>>? adjacencyList;

  Graph() {
    adjacencyList = {};
  }

  void insertNode(String node) {
    if (!adjacencyList!.containsKey(node)) {
      adjacencyList![node] = [];
    }
  }

  void insertEdge(String fromNode
  , String toNode) {
    if (!adjacencyList!.containsKey(fromNode) ||
        !adjacencyList!.containsKey(toNode)) {
      throw Exception('Invalid nodes');
    }

    adjacencyList![fromNode]!.add(toNode);
    adjacencyList![toNode]!.add(fromNode); // Uncomment for undirected graph
  }
}
void main(List<String> args) {
  Graph graph = Graph();
    graph.insertNode("A");
  graph.insertNode("B");
  graph.insertNode("C");
  graph.insertNode("D");
  graph.insertNode("E");

  // Insert edges
  graph.insertEdge("A", "B");
  graph.insertEdge("B", "C");
  graph.insertEdge("C", "D");
  graph.insertEdge("D", "E");

  print(graph.adjacencyList);
}