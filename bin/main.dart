void main() {
  final List<List<String?>> tabela = [
    ['X', 'X', 'X'],
    ['O', 'X', 'O'],
    ['O', 'X', 'O'],
  ];

  print('Linhas');
  int count = 0;
  for (final linha in tabela) {
    count++;
    if (equals(linha, 'X') || equals(linha, 'O')) {
      print('$count - $linha');
    }
  }
  print('<------------------------------------->');
  print('Colunas');
  for (var i = 0; i < tabela.length; i++) {
    final linha = getColumn(i, tabela);
    if (equals(linha, 'X') || equals(linha, 'O')) {
      print('${i + 1} - $linha');
    }
  }
}

List<E> getColumn<E>(int index, List<List<E>> matrix) {
  final res = <E>[];
  for (var i = 0; i < matrix.length; i++) {
    res.add(matrix[i][index]);
  }
  return res;
}

bool equals<E>(List<E> a, E b) {
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b) {
      return false;
    }
  }
  return true;
}
