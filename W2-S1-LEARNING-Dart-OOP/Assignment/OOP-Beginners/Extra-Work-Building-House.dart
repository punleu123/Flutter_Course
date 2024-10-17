
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

void main() {
  House myHouse = House('St k5', 'Blue');

  myHouse.addWindow(Window('Sliding', 1.5, 1.2));
  myHouse.addWindow(Window('Casement', 1.0, 1.5));

  myHouse.addRoof(Roof('Shingles', 120.0));

  myHouse.addDoor(Door('Wood', 0.9, 2.0));
  myHouse.addDoor(Door('Metal', 1.0, 2.1));


  myHouse.addTree(Tree('Oak', 5.0));
  myHouse.addTree(Tree('Pine', 6.5));

  print('House Address: ${myHouse.address}');
  print('House Color: ${myHouse.color}');
  print('Number of Windows: ${myHouse.windows.length}');
  print('Number of Roofs: ${myHouse.roofs.length}');
  print('Number of Doors: ${myHouse.doors.length}');
  print('Number of Trees: ${myHouse.trees.length}');
}