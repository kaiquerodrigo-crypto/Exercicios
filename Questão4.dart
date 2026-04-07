import 'dart:io';

void main() {
  double somaMediasTurma = 0;
  int totalAlunos = 0;
  int totalAprovados = 0;
  double somaMediasFeminino = 0;
  int totalFeminino = 0;
  double maiorMediaMasc = -1;
  double maiorMediaFem = -1;
  String matriculaMaiorMasc = '';
  String matriculaMaiorFem = '';
  while (true) {
    stdout.write('Matrícula: ');
    String matricula = stdin.readLineSync() ?? '';
    if (matricula == '00000') {
      break;
    }
    stdout.write('Nome: ');
    String nome = stdin.readLineSync() ?? '';
    stdout.write('Sexo (M/F): ');
    String sexo = (stdin.readLineSync() ?? '').toUpperCase();
    stdout.write('Nota 1: ');
    double nota1 = double.parse(stdin.readLineSync() ?? '0');
    stdout.write('Nota 2: ');
    double nota2 = double.parse(stdin.readLineSync() ?? '0');
    stdout.write('Nota 3: ');
    double nota3 = double.parse(stdin.readLineSync() ?? '0');
    stdout.write('Número de faltas: ');
    int faltas = int.parse(stdin.readLineSync() ?? '0');
    double media = (nota1 + nota2 + nota3) / 3;
    bool aprovado = media >= 7.0 && faltas <= 18;
    somaMediasTurma += media;
    totalAlunos++;
    if (aprovado) {
      totalAprovados++;
      if (sexo == 'M' && media > maiorMediaMasc) {
        maiorMediaMasc = media;
        matriculaMaiorMasc = matricula;
      }
      if (sexo == 'F' && media > maiorMediaFem) {
        maiorMediaFem = media;
        matriculaMaiorFem = matricula;
      }
    }
    if (sexo == 'F') {
      somaMediasFeminino += media;
      totalFeminino++;
    }
  }
  double mediaTurma = totalAlunos > 0 ? somaMediasTurma / totalAlunos : 0;
  double percentualAprovados = totalAlunos > 0
      ? (totalAprovados * 100) / totalAlunos
      : 0;
  double mediaFeminino = totalFeminino > 0
      ? somaMediasFeminino / totalFeminino
      : 0;
  print('\nResultados:');
  print('a) Média da turma: ${mediaTurma.toStringAsFixed(2)}');
  print(
    'b) Percentual de alunos aprovados: ${percentualAprovados.toStringAsFixed(2)}%',
  );
  print(
    'c) Matrícula do aluno masculino com maior média e aprovado: ${matriculaMaiorMasc.isEmpty ? 'Nenhum' : matriculaMaiorMasc}',
  );
  print(
    ' Matrícula da aluna com maior média e aprovada: ${matriculaMaiorFem.isEmpty ? 'Nenhuma' : matriculaMaiorFem}',
  );
  print(
    'd) Média dos alunos do sexo feminino: ${mediaFeminino.toStringAsFixed(2)}',
  );
}
