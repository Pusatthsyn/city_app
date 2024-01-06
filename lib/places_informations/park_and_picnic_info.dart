import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ParkAndPicnicWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const ParkAndPicnicWidget({super.key, 
    required this.title,
    required this.images,
    required this.description,
    required this.coordinates,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        CarouselSlider(
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 240.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 300),
            viewportFraction: 0.8,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton.icon(
          onPressed: () async {
            var location = Location();
            var value = await location.getLocation();
            if (await MapLauncher.isMapAvailable(MapType.google) != null) {
              MapLauncher.showDirections(
                mapType: MapType.google,
                destination: coordinates,
                origin: Coords(
                  value.latitude!.toDouble(),
                  value.longitude!.toDouble(),
                ),
              );
            }
          },
          icon: const Icon(Icons.assistant_navigation),
          label: Text("$title' ne Git"),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class ParkAndPicnic extends StatelessWidget {
  const ParkAndPicnic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ParkAndPicnicWidget(
            title: "Fırnız Şelalesi Mesire Alanı",
            images: const [
              'assets/places/56.jpg',
              'assets/places/57.jpg',
              'assets/places/58.jpg',
            ],
            description:
                "   Kahramanmaraş’ın 53 km. kuzeybatısındaki Fırnız Mahallesi yakınlarındaki dağın dibinden doğar. Fırnız Suyu az ilerideki Kumarlı Mahallesi yakınlarındaki Kayaaltı denilen yerden doğan Çukurhisar Suyu ile birleşerek doğuya yönelir ve Menzelet Baraj gölüne dökülür. ",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          ParkAndPicnicWidget(
            title: "Menzelet Mesire Alanı",
            images: const [
              'assets/places/59.jpg',
              'assets/places/60.jpg',
              'assets/places/61.jpg',
            ],
            description:
                "   Barajın Sessizliğinde Huzur Onikişubat ilçesinde Menzelet Barajı kenarında bulunur. Barbeküler, piknik masaları, çocuk oyun alanları, basketbol sahası ve tekne turlarıyla eğlence ve huzuru bir arada yaşayın.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          ParkAndPicnicWidget(
            title: "Yavşan Yaylası",
            images: const [
              'assets/places/62.jpg',
              'assets/places/63.jpg',
              'assets/places/64.jpg',
            ],
            description:
                "   Doğayla Bütünleşen Huzur Dolu Anlar Merkeze 35 km uzaklıktaki 2.250 metre yükseklikteki Yavşan Yaylası, ağaç gölgeleri ve doğal güzellikleriyle sizi bekliyor..",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
          ParkAndPicnicWidget(
            title: "Kapıçam Tabiat Parkı",
            images: const [
              'assets/places/65.jpg',
              'assets/places/66.jpg',
              'assets/places/67.jpg',
            ],
            description:
                "   Doğanın Kalbinde Sakin Anlar Botanik Park, Extreme Park ve Normal Piknik Alanı ile doğayla iç içe huzurlu anlar geçirin.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
