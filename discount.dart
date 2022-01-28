/*
    Задача2
  Запросить у пользователя сумму покупки и вывести сумму к оплате со скидкой: 
  от 200 до 300 – скидка будет 3%, 
  от 300 до 500 – 5%, 
  от 500 и выше – 7%.
*/

import 'dart:io';

void main() {
  var inp;
  try {
    stdout.write('Введите сумму покупки: ');
    inp = stdin.readLineSync()!;
    print('Сумма к оплате со скидкой: ${check(inp) - getDiscount(inp)}');
  } catch (e) {
    print(e);
  }
}

check(inp) {
  var x = int.tryParse(inp) == null 
      ? throw WrongInput()
      : int.parse(inp);
  return x;
}

double getDiscount(inp) {
  var x = check(inp);
  if (x >= 200 && x < 300) {
    return x * 0.03;
  } else 
  if (x >= 300 && x < 500) {
    return x * 0.05;
  } else 
  if (x >= 500) {
    return x * 0.07;
  } else {
    throw NegativeInput();
  }
}

class WrongInput {
  @override
  String toString() {
    return 'Wrong type of input';
  }
}

class NegativeInput {
  @override
  String toString() {
    return 'Price can\'t be negative';
  }
}
