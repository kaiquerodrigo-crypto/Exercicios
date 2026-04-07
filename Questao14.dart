import 'dart:io';

void main() {
  print("Digite o primeiro Vetor:");
  stdout.write("Vetor 1 (ex: 1 3 5): ");
  var v1 = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
  
  print("Digite o segundo Vetor:");
  stdout.write("Vetor 2 (ex: 2 4 6): ");
  var v2 = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();

  List<int> v3 = [];
  int i = 0, j = 0;

  while (i < v1.length && j < v2.length) {
    if (v1[i] < v2[j]) {
      v3.add(v1[i++]);
    } else {
      v3.add(v2[j++]);
    }
  }

  v3.addAll(v1.sublist(i));
  v3.addAll(v2.sublist(j));

  print("Vetor 3 Organizado: $v3");
}