// The trim() method removes leading and trailing whitespace from a string.

String text = "  hello  ";
print("'$text'");        // '  hello  ' (with spaces)
print("'${text.trim()}'"); // 'hello' (spaces removed)

// User accidentally entered with spaces
String operationInput = " + ";  // Has leading and trailing spaces





// WITHOUT trim():
String operation = operationInput;  // " + "
switch (operation) {
  case '+':  // This case won't work! Because " + " != "+"
    result = number1 + number2;
    break;
  // ...
  default:
    throw Exception("Invalid operation!"); // Falls here!
}

// USING trim():
String operation = operationInput.trim();  // "+"
switch (operation) {
  case '+':  // This case works! Because "+" == "+"
    result = number1 + number2;
    break;
}






String? userInput = "   ";  // Only spaces

// Without trim()
if (userInput.isEmpty) {
  print("Empty input!"); // Won't work, because there are space characters
}

// With trim()
if (userInput.trim().isEmpty) {
  print("Empty input!"); // Works! After trimming spaces, an empty string remains
}
