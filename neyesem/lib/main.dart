import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const anaSayfa());
}

class anaSayfa extends StatefulWidget {
  const anaSayfa({super.key});

  @override
  State<anaSayfa> createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  @override
  int a = Random().nextInt(5);
  int b = Random().nextInt(5);
  int c = Random().nextInt(5);
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Bugun ne yesem"),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      a = Random().nextInt(5);
                    });
                  }),
                  child: Image.asset("assets/images/corba_${a + 1}.jpg"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      b = Random().nextInt(5);
                    });
                  }),
                  child: Image.asset("assets/images/yemek_${b + 1}.jpg"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      c = Random().nextInt(5);
                    });
                  }),
                  child: Image.asset("assets/images/tatli_${c + 1}.jpg"),
                ),
              )
            ],
          )),
    );
  }
}
