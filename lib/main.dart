import 'package:dana_clone/aktivitas_screen.dart';
import 'package:dana_clone/dompet.screen.dart';
import 'package:dana_clone/home_screen.dart';
import 'package:dana_clone/pay_screen.dart';
import 'package:dana_clone/saya.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
  HomeScreen(), // Layar beranda
  AktivitasScreen(), // Layar aktivitas
  PayScreen(), // Layar pay (dummy)
  DompetScreen(), // Layar dompet (dummy)
  SayaScreen(), // Layar profil saya (dummy)
];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
Widget build(BuildContext context) {
  return Scaffold(
    body: IndexedStack(
      index: _currentIndex,
      children: _screens,
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          label: 'Aktivitas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'Dompet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Saya',
        ),
      ],
    ),
  );
}
}