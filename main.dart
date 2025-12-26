import 'dart:async';

void main() async {
  try {
    String data = await fetchUserData();
    print(data);

    await Future.wait([task1(), task2()]);
  } catch (e) {
    print("Error: $e");
  }

  await for (int value in counterStream()) {
    print("Stream: $value");
  }
}

Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return "User Data Loaded";
}

Future<void> task1() async {
  await Future.delayed(Duration(seconds: 1));
  print("Task 1 done");
}

Future<void> task2() async {
  await Future.delayed(Duration(seconds: 1));
  print("Task 2 done");
}

Stream<int> counterStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
