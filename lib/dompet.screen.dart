import 'package:flutter/material.dart';

class DompetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dompet'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Saldo Dompet'),
            subtitle: Text('Rp 1.000.000'),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Riwayat Transaksi'),
            subtitle: Text('10 transaksi terakhir'),
          ),
        ],
      ),
    );
  }
}
