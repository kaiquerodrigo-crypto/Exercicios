import 'dart:io';
import 'dart:math';


//esse nn estoura a memoria
void main() {
  print("Número de termos: ");
  int n = int.parse(stdin.readLineSync()!);

  double s = 0;
  double base = 3;
  int expoente = 4; 
  double divisor = 5;

  for (int i = 1; i <= n; i++) {
    double termo = pow(base, expoente) / divisor;

    if (i >= 4 && i % 2 == 0) {
      s -= termo;
    } else {
      s += termo;
    }

    print("Termo $i: ${base.toInt()}^$expoente / ${divisor.toInt()} = $termo");

    base += 2;
    expoente += 4;
    divisor += 5;
  }

  print("\nResultado Final S = $s");
}


////retorna S = NaN

//   stdout.write("Teste ");
//   int n = int.parse(stdin.readLineSync()!);

//   double s = 0;
  
//   double base = 3;      
//   int fatAlvo = 4;      
//   double divisor = 5;   

//   for (int i = 1; i <= n; i++) {
//     double termo = pow(base, fatorial(fatAlvo)) / divisor;

//     if (i >= 4 && i % 2 == 0) {
//       s -= termo;
//     } else {
//       s += termo;
//     }

//     base += 2;
//     fatAlvo += 4;
//     divisor += 5;
//   }

//   print("S = $s");
// }

// double fatorial(int n) {
//   double res = 1;
//   for (int i = 1; i <= n; i++) res *= i;
//   return res;

