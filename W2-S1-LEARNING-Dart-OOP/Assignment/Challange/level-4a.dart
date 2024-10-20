class Distance {
  //immutable variable deleration
  final double _ms;
  // Primary constructor
  const Distance(this._ms);
  // Named constructors
  Distance.fromMs(double ms)
  : _ms = ms;
  Distance.fromKms(double kms)
  : _ms = kms * 1000;
  Distance.fromCms(double cms)
  : _ms = cms / 100;
  // Addition operator
  Distance operator +(Distance other) {
    return Distance(this._ms + other._ms);
  }
  // Getters
  double get ms => _ms;
  double get kms => _ms / 1000;
  double get cms => _ms * 100;

}

void main() {
  Distance d1 = Distance.fromMs(3000);
  Distance d2 = Distance.fromKms(6);
  Distance d3 = Distance.fromCms(900000);

  Distance d4 = d2 + d3;
  print(d4.kms);
}