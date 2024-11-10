import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Buttons"),
        ),
        body: const ButtonGrid(),
      ),
    ));

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            List.generate(5, (index) => SelectableButton(key: UniqueKey())),
      ),
    );
  }
}

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
    final Color bgColor = isSelected ? Colors.blue : Colors.blue.shade50;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        width: 400,
        height: 80,
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
      ),
    );
  }
}
