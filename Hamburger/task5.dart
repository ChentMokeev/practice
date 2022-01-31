import 'dart:io';

import 'Filling and additionals.dart';
import 'Hamburger.dart';

void main() {
  print('Выберите размер гамбургера.(Нажимайте на цифры)\n1.Большой\n2.Маленький');
  var size = int.parse(stdin.readLineSync()!);

  print('Выберите начинку. (Нажимайте на цифры) \nУ нас имеется: \n1.Сыр\n2.Салат\n3.Картошка');
  var filling = stdin.readLineSync()!;
  Filling whichFill() => filling == 1
      ? Filling.cheese
      : filling == 2
          ? Filling.salad
          : filling == 3
              ? Filling.potato
              : whichFill();

  print('Если хотите можете выбрать добавку (Нажимайте на цифры):\n1.Майонез\n2.Специи\nИли оставьте пустую строку.');
  var additional = stdin.readLineSync();
  Additional? whichAdd() => additional == 1
      ? Additional.mayo
      : additional == 2
          ? Additional.pepper
          : null;

  var order1 =
      new Hamburger(size: size, filling: whichFill(), additional: whichAdd());
  order1.printCost();
}