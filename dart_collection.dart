void main() {
  // List
  List<int> numbers = [1, 2, 3];
  numbers.add(4);
  numbers.remove(2);
  numbers.insert(1, 10);
  print(numbers);

  // Set
  Set<int> uniqueNumbers = {1, 2, 3};
  print(uniqueNumbers);

  // Map
  Map<String, int> marks = {"Math": 90, "CS": 95};
  print(marks);

  // map()
  var squared = numbers.map((n) => n * n).toList();
  print("Squared: $squared");

  // where()
  var filtered = numbers.where((n) => n > 2).toList();
  print("Filtered: $filtered");

  // reduce()
  var sum = numbers.reduce((a, b) => a + b);
  print("Sum: $sum");

  // Student Management
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "roll": 1, "marks": 80},
    {"name": "Sara", "roll": 2, "marks": 90},
    {"name": "Ahmed", "roll": 3, "marks": 70},
    {"name": "Ayesha", "roll": 4, "marks": 85},
    {"name": "Usman", "roll": 5, "marks": 60},
  ];

  students.sort((a, b) => b["marks"].compareTo(a["marks"]));
  print("Sorted: $students");

  var topStudents =
      students.where((s) => s["marks"] > 75).toList();
  print("Top Students: $topStudents");

  var search =
      students.firstWhere((s) => s["name"] == "Sara");
  print("Search Result: $search");
}
