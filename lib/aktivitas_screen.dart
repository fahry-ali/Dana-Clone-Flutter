import 'package:flutter/material.dart';

class AktivitasScreen extends StatelessWidget {
  final List<Map<String, String>> _transactions = [
    {
      "date": "22 Des 2024",
      "type": "Top Up",
      "amount": "+Rp100.000",
      "status": "Berhasil"
    },
    {
      "date": "21 Des 2024",
      "type": "Kirim Saldo",
      "amount": "-Rp50.000",
      "status": "Berhasil"
    },
    {
      "date": "20 Des 2024",
      "type": "Pembayaran",
      "amount": "-Rp30.000",
      "status": "Gagal"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aktivitas"),
        backgroundColor: Colors.blue, // Warna khas Dana
      ),
      body: ListView.builder(
        itemCount: _transactions.length,
        itemBuilder: (context, index) {
          final transaction = _transactions[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: Icon(
                transaction['type'] == "Top Up"
                    ? Icons.add_circle_outline
                    : transaction['type'] == "Kirim Saldo"
                        ? Icons.send
                        : Icons.shopping_cart,
                color: Colors.blue,
              ),
              title: Text(transaction['type'] ?? ''),
              subtitle: Text(transaction['date'] ?? ''),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    transaction['amount'] ?? '',
                    style: TextStyle(
                      color: transaction['amount']?.startsWith('-') ?? false
                          ? Colors.red
                          : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    transaction['status'] ?? '',
                    style: TextStyle(
                      color: transaction['status'] == "Berhasil"
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
