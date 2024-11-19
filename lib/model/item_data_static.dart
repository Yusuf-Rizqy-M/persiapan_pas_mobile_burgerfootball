
import 'package:persiapan_pas_mobile_burgerfootball/model/model_data_static.dart';

class LigaData {
  static List<ModelDataStatic> getPopularArtists() {
    return [
      ModelDataStatic(
        name: "English Premier League",
        imagePath: "assets/images/epl.png",
        region: "English",
      ),
      ModelDataStatic(
        name: "La Liga",
        imagePath: "assets/images/laliga.png",
        region: "Spanyol",
      ),
      ModelDataStatic(
        name: "Serie A",
        imagePath: "assets/images/serieA.png",
        region: "Italia",
      ),
      ModelDataStatic(
        name: "Fußball-Bundesliga",
        imagePath: "assets/images/bundesliga.png",
        region: "Jerman",
      ),
      ModelDataStatic(
        name: "Ligue 1",
        imagePath: "assets/images/ligue1.png",
        region: "France",
      ),

    ];
  }
}
