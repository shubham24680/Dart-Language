String scream(int length) => "A${'a' * length}h!";

void main(List<String> args) {
  final list = [1, 2, 5, 10];

  // Imperative code
  for (var len in list) {
    print(scream(len));
  }

  // Functional code
  list.map(scream).forEach(print);
}
