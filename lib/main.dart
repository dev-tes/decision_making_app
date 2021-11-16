import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text(
              'Ask Me Anything'
            ),
          ),
          body: DecisionPage(
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class DecisionPage extends StatefulWidget {
  @override
  _DecisionPageState createState() => _DecisionPageState();
}

class _DecisionPageState extends State<DecisionPage> {

  int imageNumber = 4;
  void switchImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    switchImage();
                  },
                  child: Image.asset('images/ball$imageNumber.png'),
                ),
              ),
            ],
          ),
        )
    );
  }
}

