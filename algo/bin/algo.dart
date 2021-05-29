import 'dart:io';

void main(List<String> arguments) {
  print('hello entrer votre numero');
  var r = stdin.readLineSync();

  if (r.isEmpty) {
    print('numero vide');
    exit(1);
  }

  r = r.replaceAll(new RegExp(r'[^\w\s/]+'), '');
  r = r.replaceAll(new RegExp(r'^1'), '');
  r = r.replaceAll(
      new RegExp(r' '), ''); // ajouter pour supprimer les espaces qui reste

  print('numero  nettoyé  :$r');
}
