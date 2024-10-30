void cariDalamList(int nilai) {
  List<List<int>> list2D = [
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8]
  ];

  print("Isi List:");
  for (var row in list2D) {
    print(row);
  }

  bool ditemukan = false;
  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == nilai) {
        print("\n$nilai berada di: baris ${i + 1} kolom ${j + 1}");
        ditemukan = true;
      }
    }
  }

  if (!ditemukan) {
    print("\n$nilai tidak ditemukan di dalam List.");
  }
}

void main() {
  cariDalamList(5);
}
