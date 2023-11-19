import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;
  List<Widget> _pages = [
    Center(child: Text("Principal")),
    Center(child: Text("Shorts")),
    Center(child: Text("Agregar")),
    Center(child: Text("Suscripcion")),
    Center(child: Text("Biblioteca")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff212121),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,

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
