import 'package:flutter/material.dart';

int count = 0;
int solve = 0;
int mark = 0;
List<int> no = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<String> que = [
  "what is flutter",
  "My Name is? ",
  
];
List<String> opt1 = [
  "flutter is language",
  "Amar",
  
];
List<String> opt2 = [
  "flutter is framework",
  "raj",
  
];
List<String> opt3 = [
  "flutter is database",
  "ajay",
 
];
List<String> opt4 = [
  "flutter is type of codding",
  "jadhav",
 
];

List<String> ans = [
  "opt2",
  "opt1",
  
];

List<bool> ansred = [
  false,
  false,
 
];

List<String> explane = [
  "Flutter is a cross platform.",
  "Owner name."
   
];
Color optcol(String opt) {
  // ignore: unrelated_type_equality_checks
  if (ansred[count] == true) {
    if (opt == ans[count]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  } else {
    return Colors.blue;
  }
}

void isright(String x) {
  if (ansred[count] == false) {
    if (x == ans[count]) {
      mark++;
      ansred[count] = true;
      solve++;
    } else {
      solve++;
      ansred[count] = true;
    }
  }
}
