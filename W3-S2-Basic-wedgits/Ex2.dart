import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      home: Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.all(20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "CADT STUDENTS",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
    ),
  )));
}
