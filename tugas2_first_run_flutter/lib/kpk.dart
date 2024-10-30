int gcd(int a, int b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}

int kpk(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

void main() {
  int bil1 = 12;
  int bil2 = 8;
  print("Bilangan 1: $bil1");
  print("Bilangan 2: $bil2");
  print("KPK $bil1 dan $bil2 = ${kpk(bil1, bil2)}");
}
