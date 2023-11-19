import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex, // Corregir aquí
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
          print(value);
        },
        items: [
          BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: const Icon(Icons.add_circle_outlined, size: 30.0),
            ),
          ),
          BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_rounded,
            ),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
