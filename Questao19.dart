import 'dart:io';

void main() {
  List<String> board = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  String simbolo = 'X';
  int turno = 1; 
  int totalJogadas = 0;

  while (true) {
    print('\n ${board[0]} | ${board[1]} | ${board[2]} ');
    print('---+---+---');
    print(' ${board[3]} | ${board[4]} | ${board[5]} ');
    print('---+---+---');
    print(' ${board[6]} | ${board[7]} | ${board[8]} ');

    print('\nJogador $turno ($simbolo), escolha uma posição (1-9):');
    
    String? input = stdin.readLineSync();
    int? jogada = int.tryParse(input ?? '');

    if (jogada == null || jogada < 1 || jogada > 9 || board[jogada - 1] == 'X' || board[jogada - 1] == 'O') {
      print('Jogada inválida! Escolha um número que esteja no tabuleiro.');
      continue;
    }

    board[jogada - 1] = simbolo;
    totalJogadas++;

    if (verificarGanhador(board)) {
      print('\n--- FIM DE JOGO ---');
      print('O JOGADOR $turno VENCEU! Parabéns!');
      break;
    }

    if (totalJogadas == 9) {
      print('\n--- FIM DE JOGO ---');
      print('Deu VELHA! Empate entre os jogadores.');
      break;
    }

    if (turno == 1) {
      turno = 2;
      simbolo = 'O';
    } else {
      turno = 1;
      simbolo = 'X';
    }
  }
}

bool verificarGanhador(List<String> b) {
  List<List<int>> vitoria = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], 
    [0, 3, 6], [1, 4, 7], [2, 5, 8], 
    [0, 4, 8], [2, 4, 6]            
  ];

  for (var pos in vitoria) {
    if (b[pos[0]] == b[pos[1]] && b[pos[1]] == b[pos[2]]) {
      return true;
    }
  }
  return false;
}