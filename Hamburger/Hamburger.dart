import 'Filling and additionals.dart';

class Hamburger {
  int size;
  Filling filling;
  Additional? additional;

  int get price => (this.size == 1 ? 100 : 50);
  set price(int a) => this.filling;

  int get calories => (this.size == 1 ? 40 : 20);

  Hamburger({required this.size, required this.filling, this.additional});

  printCost() {
    print(this.price + int.parse(this.filling) + (this.additional ?? 0));
  }
}
