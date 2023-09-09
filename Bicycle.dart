class Bicycle {
  int cad;
  int speed = 0;
  int gear;
  Bicycle(this.cad, this.gear);

  void applyBrake(int dec) {
    speed -= dec;
  }

  void speedUp(int inc) {
    speed += inc;
  }

  @override
  String toString() => 'Bicycle : $speed mph';
}

void main(List<String> args) {
  var bike = new Bicycle(2, 1);
  bike.speedUp(45);
  bike.speedUp(45);
  print(bike);
  bike.applyBrake(25);
  print(bike);
}
