import 'dart:io';

void main(List<String> arguments) {
  var indicatif = false;
  print('hello entrer votre numero');
  var r = stdin.readLineSync();
  var result = '';

  if (r.isEmpty) {
    print('numero vide');
    exit(1);
  }

  for (var i = 0; i < r.length; i++) {
    if (i == 0 || i == 1) {
      if (r[i] == '1' || r[i] == '1') {
        indicatif = true;
      } // pour pouvoir enlever le 1 qui est l'indicatif
    }
    if (r[i] != '+' &&
        indicatif == false &&
        r[i] != ' ' &&
        r[i] != '-' &&
        r[i] != '.' &&
        r[i] != '(' &&
        r[i] != ')') {
      result += (r[i]);
    }
    indicatif = false;
    // pour que tous les 1 ne soit pas pris comme les indicatifs
  }
  print('ton numero sont nettoyage est :$r');
  print('ton numero apres netoyage est : $result');
}
