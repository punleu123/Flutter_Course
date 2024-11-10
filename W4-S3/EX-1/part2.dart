import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: SelectableButton(),
        ),
      ),
    ));

class SelectableButton extends StatefulWidget {
  const SelectableButton({super.key});

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  bool isSelected = false;

  void toggleStatus() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String textLabel = isSelected ? "Selected" : "Not selected";
    final Color textColor = isSelected ? Colors.white : Colors.black;
    final Color? bgColor = isSelected ? Colors.blue[500] : Colors.blue[50];

    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
        ),
        onPressed: toggleStatus,
        child: Center(
          child: Text(
            textLabel,
            style: TextStyle(color: textColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
