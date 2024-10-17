class Tree {
  String name;
  double height;
  Tree(this.name, this.height);
  @override
  String toString() {
    return 'Tree: $name, Height: $height';
  }
}

class Window {
  String type;
  double width;
  double height;

  Window(this.type, this.width, this.height);
  @override
  String toString() {
    return 'Window: $type, Width: $width, Height: $height';
  }
}

class Roof {
  String material;
  double area;
  Roof(this.material, this.area);
  @override
  String toString() {
    return 'Roof: $material, Area: $area';
  }
}

class Door {
  String material;
  double width;
  double height;

  Door(this.material, this.width, this.height);
  @override
  String toString() {
    return 'Door: $material, Width: $width, Height: $height';
  }
}

class Items {
  String name;
  int quantity;
  Items(this.name, this.quantity);
  @override
  String toString() {
    return 'Item: $name, Quantity: $quantity';
  }
}

class House {
  String address;
  String color;
  List<Window> windows = [];
  List<Roof> roofs = [];
  List<Door> doors = [];
  List<Tree> trees = [];
  List<Items> items = [];

  House(this.address, this.color, this.windows, this.roofs, this.doors, this.trees, this.items);

  @override
  String toString() {
    return 'House: $address, Color: $color\n' +'Windows: $windows\n' +'Roofs: $roofs\n' +'Doors: $doors\n' +'Trees: $trees\n' +'Items: $items';
  }
}

void main() {
  House myHouse = House('St k5', 'Blue', [Window('Glass', 10, 20)], [Roof('Metal', 100)], [Door('Wood', 10, 20)], [Tree('Mango', 10)], [Items('Chair', 10)]);
  print(myHouse);
}
