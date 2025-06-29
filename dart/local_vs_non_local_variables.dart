void main() {
  var name = 'Melike'; // Local variable, only valid within the main function
  print(name);
  print(globalName); // Accessing top-level variable
}

String globalName = 'Melike'; // Top-level variable, accessible everywhere in the file, non local variable

class Person {
  String name = 'Melike'; // Class field, non local variable, accessible everywhere in the file
}
