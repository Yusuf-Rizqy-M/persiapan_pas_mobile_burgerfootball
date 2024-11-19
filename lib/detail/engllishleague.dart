import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persiapan_pas_mobile_burgerfootball/Api/Api_Controller.dart';
import 'package:persiapan_pas_mobile_burgerfootball/widget/my_team.dart';

import '../widget/my_image.dart';
import '../widget/my_text.dart';

class Engllishleague extends StatelessWidget {
  final ApiController teamController = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: MyText(
          hintText: "Premier League",
          fontSize: 20,
          colors: Colors.black,
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 30.0),
            child: MyImage(
              imageName: "assets/images/azazel.jpg",
              width: 40,
              height: 40,
              borderRadius: 20,
            ),
          ),
        ],
      ),
      body: Obx(() {
        if (teamController.isLoading.value) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.blue));
        }

        return ListView.builder(
          itemCount: teamController.postList.length,
          itemBuilder: (context, index) {
            final post = teamController.postList[index];

            if (post.strBadge.isEmpty) return const SizedBox.shrink();

            // Menggunakan widget MyTeam
            return MyTeam(
              imageUrl: post.strBadge,
              teamName: post.strTeam,
              stadiumName: post.strStadium,
            );
          },
        );
      }),
    );
  }
}
