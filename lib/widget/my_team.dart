import 'package:flutter/material.dart';
import 'package:persiapan_pas_mobile_burgerfootball/model/model_bola.dart';
import 'package:persiapan_pas_mobile_burgerfootball/widget/my_image_network.dart';
import 'package:persiapan_pas_mobile_burgerfootball/widget/my_text.dart';
import 'package:get/get.dart';
import '../controller/task_controller.dart';

class MyTeam extends StatelessWidget {
  final String imageUrl;
  final String teamName;
  final String stadiumName;

  const MyTeam({
    Key? key,
    required this.imageUrl,
    required this.teamName,
    required this.stadiumName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TaskController favoriteController = Get.find<TaskController>();
    final modelFav = ModelBola(
      strTeam: teamName,
      strStadium: stadiumName,
      strBadge: imageUrl,
    );

    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyImageNetwork(
              imageUrl: imageUrl,
              width: 65,
              height: 65,
              borderRadius: 8.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        hintText: teamName,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        colors: Colors.yellow,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Obx(() {
                          final isFavorite =
                          favoriteController.isFavorite(modelFav);
                          return IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.blueAccent,
                            ),
                            onPressed: () {
                              if (isFavorite) {
                                favoriteController.removeFavorite(modelFav);
                              } else {
                                favoriteController.addFavorite(modelFav);
                              }
                            },
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        color: Colors.pinkAccent,
                        size: 16.0,
                      ),
                      const SizedBox(width: 4.0),
                      MyText(
                        hintText: stadiumName,
                        fontSize: 14.0,
                        colors: Colors.grey[400]!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
