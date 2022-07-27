import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ChallengeApp());
}

class ChallengeApp extends StatefulWidget {
  const ChallengeApp({Key? key}) : super(key: key);

  @override
  State<ChallengeApp> createState() => _ChallengeAppState();
}

class _ChallengeAppState extends State<ChallengeApp> {
  int balls1 = Random().nextInt(5) + 1;
  int balls2 = Random().nextInt(5) + 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        balls1 = Random().nextInt(5) + 1;
                        balls2 = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset("images/ball$balls1.png")),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
