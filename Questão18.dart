import 'dart:io';

void main() {
  String palavra = "casa";
  List<String> exibicao = ["_", "_", "_", "_"];
  int erros = 0;

  while (erros < 6 && exibicao.contains("_")) {
    print("Palavra: ${exibicao.join(" ")}");
    stdout.write("Digite uma letra: ");
    String letra = stdin.readLineSync()!;

    bool acertou = false;

    for (int i = 0; i < palavra.length; i++) {
      if (palavra[i] == letra) {
        exibicao[i] = letra;
        acertou = true;
      }
    }

    if (!acertou) {
      erros++;
      print("Errou! Erros: $erros");
    }
  }

  if (!exibicao.contains("_")) {
    print("Voce ganhou!");
  } else {
    print("Voce perdeu! Palavra: $palavra");
  }
}
