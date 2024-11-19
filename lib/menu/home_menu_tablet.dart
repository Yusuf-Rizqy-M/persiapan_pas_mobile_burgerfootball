import 'package:flutter/material.dart';

import '../widget/my_image.dart';

class HomeMenuTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                width: 730,
                height: 460,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(20), // Adjust padding as needed
                        child: Image.asset(
                          'assets/images/bola.png',
                          width: 70, // Increase width
                          height: 70, // Increase height
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(20), // Adjust padding as needed
                        child: Image.asset(
                          'assets/images/piala.png',
                          width: 150, // Increase width
                          height: 150, // Increase height
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Kibaskan Semangatmu tunjukkan keringatmu dalam pertandingan',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Temukan team terbaik sesuai selera Anda, cepat dan mudah.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 60,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: PageView(
                  children: [
                    Image.asset(
                      'assets/images/match1.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/match2.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/images/match3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Berita Terbaru",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildNewsCard('assets/images/hasil.png', "Hasil Liga Inggris"),
                    _buildNewsCard('assets/images/transfer.png', "Transfer Terbaru"),
                    _buildNewsCard('assets/images/akandatang.png', "Akan Datang"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(IconData icon, String title) {
    return Card(
      color: Colors.grey[850],
      child: InkWell(
        onTap: () {
          // Navigasi sesuai kebutuhan
        },
        child: Container(
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 40),
              SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewsCard(String imagePath, String title) {
    return Card(
      color: Colors.grey[850],
      child: Container(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                imagePath,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
