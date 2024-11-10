import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s2/bird.jpg",
  "assets/w4-s2/bird2.jpg",
  "assets/w4-s2/insect.jpg",
  "assets/w4-s2/girl.jpg",
  "assets/w4-s2/man.jpg",
];

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: () => {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: IconButton(
                icon: const Icon(Icons.navigate_next),
                tooltip: 'Go to the next image',
                onPressed: () => {},
              ),
            ),
          ],
        ),
        body: Image.asset(images[0]),
      ),
    ));

//Add 2 buttons as bellow. 
//Add 2 function to handle the clicks on the 2 buttons
//Add the logic to change the image when the user clicks on the buttons
