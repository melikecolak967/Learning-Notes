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

  // Types like int? and String? can be null. Their default value is null if no value is assigned.
  int? lineCount;
  print(lineCount); // null

  // You must assign an initial value to non-nullable variables!
  String name = "ahmet";    // ✅ Value assigned
  print(name);              // ✅ Works
  
  String? surname;          // ✅ Automatically null
  print(surname);           // ✅ Prints null
  
  if (surname == null) {    // ✅ Null check
    print("No surname");
  }  
}
