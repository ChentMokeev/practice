/* 
    Задача 4
  Напишите функцию getDays, которая принимает год и месяц 
  (пусть январь будет — 1, февраль — 2 и т.д.), 
  а возвращает количество дней в месяце
*/

import 'dart:io';

void main() {
  stdout.write('Введите год:  ');
  var year = int.parse(stdin.readLineSync()!);
  stdout.write('Введите месяц:  ');
  var month = int.parse(stdin.readLineSync()!);

  getDays(year, month);
}

getDays(int a, int b) {
  if (a % 4 == 0 && b == 2) {
    print(29);
  } else if (b == 2) {
    print(28);
  } else if ((b < 8 && b.isEven) || (b > 7 && b.isOdd)) {
    print(30);
  } else {
    print(31);
  }
}
