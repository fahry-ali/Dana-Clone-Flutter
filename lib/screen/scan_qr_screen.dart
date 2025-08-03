import 'package:dana_clone/screen/bayar_screen.dart';
import 'package:dana_clone/screen/kirim_screen.dart';
import 'package:dana_clone/screen/minta_screen.dart';
import 'package:flutter/material.dart';

class ScanQrScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR"),
      ),
      body: Center(
        child: Text(
          "Halaman Scan QR",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

Widget _buildMenuItem(BuildContext context, IconData icon, String label) {
  return GestureDetector(
    onTap: () {
      switch (label) {
        case 'Scan QR':
          Navigator.push(context, MaterialPageRoute(builder: (context) => ScanQrScreen()));
          break;
        case 'Bayar':
          Navigator.push(context, MaterialPageRoute(builder: (context) => BayarScreen()));
          break;
        case 'Kirim':
          Navigator.push(context, MaterialPageRoute(builder: (context) => KirimScreen()));
          break;
        case 'Minta':
          Navigator.push(context, MaterialPageRoute(builder: (context) => MintaScreen()));
          break;
      }
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}

