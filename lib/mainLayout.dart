import 'package:flutter/material.dart';
import 'package:ongkircek/cekOngkirLayout.dart';
import 'package:ongkircek/lacakPaketLayout.dart';
import 'package:ongkircek/settings.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  List mainContent = [
    CekOngkirLayout(),
    LacakPaketLayout(),
  ];

  _onTapNavigation(int index) {
    setState(() {
      indexContent = index;
    });
  }

  int indexContent = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: mainContent[indexContent],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Ongkos Kirim'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            title: Text('Lacak Paket'),
          ),
        ],
        currentIndex: indexContent,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black38,
        onTap: _onTapNavigation,
      ),
    );
  }
}
