void main() {
  // Lazy initialization is not possible with const, because the value must be known at compile time.
  // Lazy initialization can be used with final, because final value can be assigned at runtime.

  final int finalCount; // Uninitialized, can be assigned later
  finalCount = DateTime.now().second; // Calculated at runtime
  print(finalCount); // For example: 45
  // finalCount = 100; // Error! Cannot be reassigned

  const int constCount = 42; // Constant at compile time
  print(constCount); // 42
  // const int constCount2 = DateTime.now().second; // Error! Not known at compile time

  const int lineCount; // Error! const variable must be initialized immediately
  lineCount = 42;
}
