void main(){
// The Dart compiler prohibits null dereference errors. In other languages, this could lead to a runtime error.

// Dart catches such errors at compile-time, preventing runtime errors.
int? i;
print(i.abs()); // Error! i might be null, so abs() cannot be called.

// To access properties or methods of a nullable variable, you must first check that it is not null.
String? text;
if (text != null) {
  print(text.length); // Safe
}
}
