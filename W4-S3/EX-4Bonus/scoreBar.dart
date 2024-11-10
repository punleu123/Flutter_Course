import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScoreCard(title: "My score in Flutter"),
                SizedBox(height: 20),
                ScoreCard(title: "My score in Dart"),
                SizedBox(height: 20),
                ScoreCard(title: "My score in React"),
              ],
            ),
          ),
        ),
      ),
    ));

class ScoreCard extends StatefulWidget {
  final String title;

  const ScoreCard({Key? key, required this.title}) : super(key: key);

  @override
  _ScoreCardState createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  double score = 0.0;

  void _increaseScore() {
    setState(() {
      if (score < 1.0) score += 0.1;
    });
  }

  void _decreaseScore() {
    setState(() {
      if (score > 0.0) score -= 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: _decreaseScore,
                icon: const Icon(Icons.remove),
                color: Colors.red,
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: _increaseScore,
                icon: const Icon(Icons.add),
                color: Colors.green,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: score,
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: score < 0.3
                              ? Colors.lightGreen
                              : score < 0.7
                                  ? Colors.green
                                  : Colors.green[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
