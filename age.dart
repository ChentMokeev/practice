/*
    Задача 3
  Запросить у пользователя его возраст и определить, кем он является: 
  ребенком (0–2), 
  подростком (12–18), 
  взрослым(18_60) 
  или пенсионером (60– ...).
*/

import 'dart:io';

void main() {
  stdout.write('Введите свой возраст: ');
  var inp = int.parse(stdin.readLineSync()!);

  if (inp >= 0 && inp < 12) {
    print('Ребёнок');
  } else 
  if (inp >= 12 && inp < 18) {
    print('Подросток');
  } else 
  if (inp >= 18 && inp < 60) {
    print('Взрослый');
  } else 
  if (inp >= 60) {
    print('Пенсионер');
  }
}