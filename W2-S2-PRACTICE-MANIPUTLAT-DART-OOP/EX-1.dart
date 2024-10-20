enum Skill { FLUTTER, DART, OTHER }

List<Employee> employees = [];

void addEmployee(Employee employee) {
  employees.add(employee);
}

void removeEmployee(Employee employee) {
  employees.remove(employee);
}

void listEmployees() {
  for (var employee in employees) {
    print(employee);  
  }
}

class Address {
  String _street;
  String _city;
  String _zipCode;

  Address(this._street, this._city, this._zipCode);

  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;

  @override
  String toString() {
    return '$_street, $_city, $_zipCode';
  }
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  Address _address;
  int _yearsOfExperience;

 
  Employee(this._name, this._baseSalary, this._skills, this._address, this._yearsOfExperience);

  Employee.mobileDeveloper(String name, double baseSalary, Address address, int yearsOfExperience)
      : this(name, baseSalary, [Skill.FLUTTER, Skill.DART], address, yearsOfExperience);

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  double computeSalary() {
    double totalSalary = _baseSalary;

    totalSalary += _yearsOfExperience * 2000;

    for (var skill in _skills) {
      switch (skill) {
        case Skill.FLUTTER:
          totalSalary += 5000;
          break;
        case Skill.DART:
          totalSalary += 3000;
          break;
        case Skill.OTHER:
          totalSalary += 1000;
          break;
      }
    }

    return totalSalary;
  }

  @override
  String toString() {
    String skillString = _skills.map((skill) => skill.toString().split('.').last).join(', ');
    return 'Employee: $_name\n'
           'Base Salary: \$_${_baseSalary.toStringAsFixed(2)}\n'
           'Computed Salary: \$_${computeSalary().toStringAsFixed(2)}\n'
           'Skills: $skillString\n'
           'Address: ${_address}\n'
           'Years of Experience: $_yearsOfExperience';
  }
}

void main() {
  var emp1 = Employee.mobileDeveloper(
    'Sokea',
    40000,
    Address('T123 St', 'Phnom Penh', '92343'),
    5,
  );
  print(emp1);  

  var emp2 = Employee(
    'Ronan',
    40000,  
    [Skill.OTHER],
    Address('K456 St', 'Siem Reap', '11111'),
    7
  );
  print(emp2);  
}
