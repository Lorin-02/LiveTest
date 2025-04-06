void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  Map<String, double> result = {};

  for (int i = 0; i < students.length; i++) {
    String name = students[i]["name"];
    List<int> scores = students[i]["scores"];

    int total = 0;
    for (int j = 0; j < scores.length; j++) {
      total += scores[j];
    }

    double average = total / scores.length;
    average = double.parse(average.toStringAsFixed(2));
    result[name] = average;
  }

  var sortedList = result.entries.toList();
  sortedList.sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedResult = {};
  for (int i = 0; i < sortedList.length; i++) {
    sortedResult[sortedList[i].key] = sortedList[i].value;
  }

  print(sortedResult);
}


