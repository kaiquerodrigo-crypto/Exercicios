import 'dart:io';
import 'dart:math';

void main() {
  print("Número de termos:");
  int n = int.parse(stdin.readLineSync()!);
  
  print("Valor de X:");
  double x = double.parse(stdin.readLineSync()!);

  double s = 0;
  int expoente = 2; 
  int numFatorial = 1;
  bool subindo = true;

  for (int i = 1; i <= n; i++) {
    double termo = pow(x, expoente) / fatorial(numFatorial);
    s += termo;

    print("Termo $i: $x^$expoente / $numFatorial!");

    expoente++;

    if (subindo) {
      numFatorial++;
      if (numFatorial == 4) subindo = false;
    } else {
      numFatorial--;
      if (numFatorial == 1) subindo = true;
    }
  }

  print("\nResultado de S: ${s.toStringAsFixed(2)}");
}

double fatorial(int n) {
  double res = 1;
  for (int i = 1; i <= n; i++) res *= i;
  return res;
}