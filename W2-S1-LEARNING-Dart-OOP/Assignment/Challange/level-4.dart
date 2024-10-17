class Distance {
  //immutable variable deleration
  final double _cms;

  // Primary constructor
  const Distance(this._cms);

  // Named constructors
  Distance.fromCms(double cms) 
  : _cms = cms;
  Distance.fromMeters(double meters) 
  : _cms = meters * 100;
  Distance.fromKms(double kms) 
  : _cms = kms * 100000;

  // Addition operator
  Distance operator +(Distance other) {
    return Distance(this._cms + other._cms);
  }

  // Getters
  double get cms => _cms;
  double get meters => _cms / 100;
  double get kms => _cms / 100000;
}

void main() {
  Distance d1 = Distance.fromCms(300);
  Distance d2 = Distance.fromMeters(6);
  Distance d3 = Distance.fromKms(9);

  Distance d4 = d2 + d3;
  print(d4.meters);
}
