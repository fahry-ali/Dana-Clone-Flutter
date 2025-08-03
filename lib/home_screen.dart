import 'dart:ui';

import 'package:flutter/material.dart';
import '../screen/scan_qr_screen.dart';
import '../screen/bayar_screen.dart';
import '../screen/kirim_screen.dart';
import '../screen/minta_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dana'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header (Saldo dan Menu Utama)
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/promo1.png'),//path ke gambar 
                  fit: BoxFit.cover, 
                )
              ),
                child: ClipRRect(
    // Agar efek blur tidak keluar dari area Container
    borderRadius: BorderRadius.circular(0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Nilai blur
      child: Container(
        color: const Color.fromARGB(135, 35, 10, 255).withOpacity(0.0), // Lapisan transparansi untuk efek gelap
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  // Saldo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance_wallet, color: Colors.white, size: 28),
                          SizedBox(width: 8),
                          Text(
                            'Rp 150.573',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.visibility_off, color: Colors.white),
                        ],
                      ),
                      Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Menu Utama
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMainMenu(
                        context,
                        icon: Icons.qr_code,
                        label: 'Pindai',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScanQrScreen()),
                          );
                        },
                      ),
                      _buildMainMenu(
                        context,
                        icon: Icons.add_circle,
                        label: 'Isi Saldo',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BayarScreen()),
                          );
                        },
                      ),
                      _buildMainMenu(
                        context,
                        icon: Icons.send,
                        label: 'Kirim',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KirimScreen()),
                          );
                        },
                      ),
                      _buildMainMenu(
                        context,
                        icon: Icons.request_page,
                        label: 'Minta',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MintaScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
            SizedBox(height: 16),
            // Grid Menu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mulai!',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      final icons = [
                        Icons.card_giftcard,
                        Icons.stars,
                        Icons.phone_android,
                        Icons.shopping_basket,
                        Icons.percent,
                        Icons.play_circle_fill,
                        Icons.games,
                        Icons.more_horiz,
                      ];
                      final labels = [
                        'Hadiah Harian',
                        'A+ Rewards',
                        'Pulsa & Data',
                        'Belanja Mulai 1Rb',
                        'DANA Deals',
                        'Google Play Zone',
                        'Mini Games',
                        'Lihat Semua',
                      ];
                      return _buildGridMenu(icons[index], labels[index]);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Feed
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.person, size: 40, color: Colors.blue),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Feed',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Cari tahu kabar terbaru teman-temanmu!',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('TELUSURI', style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            // Dana Protection
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: Colors.blue[50],
              child: Row(
                children: [
                  Icon(Icons.shield, color: Colors.blue, size: 40),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Dana Protection: Lindungi akun Anda dengan keamanan ekstra.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text('LINDUNGI'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }

  Widget _buildMainMenu(BuildContext context, {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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

  Widget _buildGridMenu(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
      ],
    );
  }
  
  ScanQRScreen() {}
}
