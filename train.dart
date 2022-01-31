void main() {
  var x = new Train(wide: 4, height: 3);
  x.canGo(5, 3);
}

class Train {
  int wide;
  int height;

  Train({required this.wide, required this.height});

  canGo(int a, int b) {
    a > wide && b > height ? print('OK') : print('No');
  }
}
