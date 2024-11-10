import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: const Center(
          child: Column(
            children: [
              SelectableButton(
                isSelected: false,
              ),
              SizedBox(height: 10),
              SelectableButton(
                isSelected: true,
              ),
              SizedBox(height: 10),
              SelectableButton(
                isSelected: false,
              ),
              SizedBox(height: 10),
              SelectableButton(
                isSelected: true,
              ),
            ],
          ),
        ),
      ),
    ));

class SelectableButton extends StatefulWidget {
  const SelectableButton({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  State<SelectableButton> createState() => _SelectableButtonState();
}

class _SelectableButtonState extends State<SelectableButton> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  void toggleStatus() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
        ),
        onPressed: toggleStatus,
        child: Center(
          child: Text(
            isSelected ? "Selected" : "Not selected",
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
