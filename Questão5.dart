import 'dart:io';

void main() {
  int total = 0;
  int baixo = 0, normal = 0, alto = 0;

  String nomeMaiorF = "";
  double maiorPesoF = 0;

  while (true) {
    print("Digite o nome (ou fim para parar):");
    String nome = stdin.readLineSync()!;

    if (nome == "fim") break;

    print("Sexo (M/F):");
    String sexo = stdin.readLineSync()!;

    print("Peso:");
    double peso = double.parse(stdin.readLineSync()!);

    total++;

    String classificacao;

    if (peso <= 2) {
      classificacao = "Baixo Peso";
      baixo++;
    } else if (peso <= 4) {
      classificacao = "Normal";
      normal++;
    } else {
      classificacao = "Alto Peso";
      alto++;
    }

    print("Nome: $nome | Sexo: $sexo | $classificacao");

    if (sexo == "F" && peso > maiorPesoF) {
      maiorPesoF = peso;
      nomeMaiorF = nome;
    }
  }

  print("Maior peso feminino: $nomeMaiorF");

  print("Baixo Peso: ${(baixo / total) * 100}%");
  print("Normal: ${(normal / total) * 100}%");
  print("Alto Peso: ${(alto / total) * 100}%");
}
