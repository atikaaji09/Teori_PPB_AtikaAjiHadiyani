import 'dart:math';

void buatMatriks(int a, int b) {
  // Membuat matriks dengan elemen random
  List<List<int>> matrix = List.generate(
      a, (i) => List.generate(b, (j) => Random().nextInt(10) + 1));

  // Menampilkan matriks asli
  print("Matriks $a x $b:");
  for (var row in matrix) {
    print(row);
  }

  // Membuat transpose matriks
  List<List<int>> transpose =
      List.generate(b, (i) => List.generate(a, (j) => matrix[j][i]));

  // Menampilkan matriks transpose
  print("\nMatriks Transpose:");
  for (var row in transpose) {
    print(row);
  }
}

void main() {
  buatMatriks(3, 2);
}
