class Node {
  int x;
  int y;
  color c;
  
  void draw() {
    fill(c);
    ellipse(x, y, 10, 10);
  }
}

Node[] nodes;

void setup() {
  size(500,500);
  
  int numNodes = 10;
  nodes = new Node[numNodes];
  for(int i = 0; i < numNodes; ++i) {
    nodes[i] = new Node();
    Node n = nodes[i];
    n.c = color((i / (float)numNodes) * 255);
    n.x = (width / 2) + (i * 10);
    n.y = height / 2;
  }
}

void draw() {
  for(Node n: nodes) {
    n.draw();
  }
}