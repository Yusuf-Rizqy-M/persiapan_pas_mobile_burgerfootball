import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persiapan_pas_mobile_burgerfootball/model/item_data_static.dart';
import 'package:persiapan_pas_mobile_burgerfootball/model/model_data_static.dart';

import '../widget/my_text.dart';

class PopularMenu extends StatelessWidget {
  final List<ModelDataStatic> artists = LigaData.getPopularArtists();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: artists.length,
          itemBuilder: (context, index) {
            final artist = artists[index];
            return Card(
              color: Colors.white, // Warna latar belakang kartu gelap
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    artist.imagePath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: MyText(
                  hintText: artist.name,
                  fontSize: 14,
                  colors: Colors.black, // Warna teks gelap
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                subtitle: MyText(hintText: artist.region, fontSize: 10, colors: Colors.blueAccent,fontWeight: FontWeight.w600,),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {
                  if (artist.name == "English Premier League") {
                    Get.toNamed('/detailenglish');
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
