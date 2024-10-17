
class Window {
  String type;
  double width;
  double height;

  Window(this.type, this.width, this.height);
}

class Roof {
  String material;
  double area;

  Roof(this.material, this.area);
}

class Door {
  String material;
  double width;
  double height;

  Door(this.material, this.width, this.height);
}

class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}

class House {
  String address;
  String color;
  List<Window> windows = [];  // by default empty
  List<Roof> roofs = [];      // by default empty
  List<Door> doors = [];      // by default empty
  List<Tree> trees = [];      // by default empty

  House(this.address, this.color);

  void addWindow(Window newWindow) {
    this.windows.add(newWindow);
  }

  void addRoof(Roof newRoof) {
    this.roofs.add(newRoof);
  }

  void addDoor(Door newDoor) {
    this.doors.add(newDoor);
  }

  void addTree(Tree newTree) {
    this.trees.add(newTree);
  }
}

