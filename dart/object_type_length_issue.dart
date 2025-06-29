void main() {
  
  //Object type does not have a length method
  
  var name = 'melike'; // Type: String (automatically inferred)
  String name2 = 'melike'; // Type: String (explicitly specified)
  Object name3 = 'melike'; // Type: Object, can point to any object
  dynamic name4 = 'melike'; // Type: dynamic, can change to any type
  
  print(name.length); // Works, because name is of type String
  print(name3.length); // Throws an error, because Object type does not have a length method
  print(name4.length); // Works, because dynamic is flexible
  name4 = 42; // No issue, because it's dynamic
  print(name4); // 42  
 
}
