import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mask(),
    );
  }
}

class Mask extends StatefulWidget {
  const Mask({super.key});

  @override
  State<Mask> createState() => _MaskState();
}

class _MaskState extends State<Mask> {
  final double opacity = 1;
  final int flex = 1;

  _items() {
    List<Widget> listWidgets = [];
    for (int i = 0; i < 20; i++) {
      listWidgets.add(Expanded(
          flex: flex,
          child: Container(color: Colors.black,)));
      listWidgets.add(Expanded(
          flex: flex,
          child: Container(color: Colors.white,)));
    }
    return listWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            child: Opacity(
              opacity: opacity,
              child: SizedBox(
                child: Column(
                  children:_items(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
