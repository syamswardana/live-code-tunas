import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  //example 1
  // List<int> input1 = [4, 2];
  // List<int> input2 = [8, 9, 3, 2];
  // List<int> input3 = [5, 4, 1, 3];
  // Hasil = 6

  //example 2
  // List<int> input1 = [5, 3];
  // List<int> input2 = [8, 4, 5, 6, 7];
  // List<int> input3 = [9, 8, 7, 5, 6];
  // Hasil = 3

  //example 3
  // List<int> input1 = [5, 9];
  // List<int> input2 = [2, 3, 6, 7, 8];
  // List<int> input3 = [3, 4, 2, 2, 3];
  // Hasil = 23

  List<int> input1 = [];
  List<int> input2 = [];
  List<int> input3 = [];

  print("input line 1 : ");
  String? line1 = stdin.readLineSync(encoding: utf8);
  if (line1 != null) {
    input1 = line1.split(" ").map((e) => int.tryParse(e) ?? 0).toList();
  }

  print("input line 2 : ");
  String? line2 = stdin.readLineSync(encoding: utf8);
  if (line2 != null) {
    input2 = line2.split(" ").map((e) => int.tryParse(e) ?? 0).toList();
    if (input1.isNotEmpty && input2.length > input1[0]) {
      print("jumlah number terlalu banyak");
    }
  }

  print("input line 3 : ");
  String? line3 = stdin.readLineSync(encoding: utf8);
  if (line3 != null) {
    input3 = line3.split(" ").map((e) => int.tryParse(e) ?? 0).toList();
  }

  if (input1.isNotEmpty || input2.isNotEmpty || input3.isNotEmpty) {
    int totalScore = input1[1];

    input2.sort();
    input3.sort();

    for (var i = 0; i < input1[0]; i++) {
      print("total score : $totalScore, input2 : ${input2[i]}");
      if (totalScore >= input2[i]) {
        totalScore += input3[i];
      }
    }

    print(totalScore);
  }
}
