void main() {
  List<List<int>> array2D = List.generate(4, (index) => []);

  for (int i = 0; i < 4; i++) {
    array2D[0].add(6 + (i * 6));
  }

  for (int i = 0; i < 5; i++) {
    array2D[1].add(3 + (i * 2));
  }

  for (int i = 0; i < 6; i++) {
    array2D[2].add((i + 4) * (i + 4) * (i + 4));
  }

  for (int i = 0; i < 7; i++) {
    array2D[3].add(3 + (i * 7));
  }

  print('Isi List:');
  for (var row in array2D) {
    print(row.join(' '));
  }
}
