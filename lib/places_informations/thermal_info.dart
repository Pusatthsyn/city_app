import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ThermalWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const ThermalWidget({super.key, 
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
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
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

class Thermal extends StatelessWidget {
  const Thermal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ThermalWidget(
            title: "ILICA KAPLICALARI",
            images: const [
              'assets/places/68.jpg',
              'assets/places/69.jpg',
              'assets/places/70.jpg',
            ],
            description:
                "   Kahramanmaraş İli merkezinden 70 km. uzaklıkta olan Ilıcası Kaplıcalarına ulaşım oldukça rahattır. Yolun 12 km 'lik bölümünün Menzelet Barajının kenarından devam etmesi seyahat boyunca Kahramanmaraş'ın doğa harikalarını gözler önüne sermektedir. Ilıca Kaplıcaları çok uzun zamandan beri bölgede turizm alanı olarak bilindiğinden turistlerin ihtiyacını karşılamaya yönelik yeterli sayıda pansiyon, otel ve diğer işletmeler mevcuttur. ",
            coordinates: Coords(37.84722420888954, 36.87172988465449),
          ),
          ThermalWidget(
            title: "DÖNGELE KAPLICALARI",
            images: const [
              'assets/places/71.jpg',
              'assets/places/72.jpg',
              'assets/places/73.jpg',
            ],
            description:
                "   Döngele Kaplıcaları, Onikişubat ilçesine bağlı Döngele köyünde yer almaktadır. Kaplıcanın 38 derece sıcaklıktaki şifalı suyu, konaklama tesislerinde turistlerin hizmetine sunulmaktadır. \n   Yılın her döneminde turistleri ve şifa arayan hastaları misafir eden Ilıca ve Döngele Kaplıcaları değerli termal suları, yaylaları, doğal güzellikleri ve ulaşım kolaylığı açısından sağlık turizminde ilgi çekmektedir.",
            coordinates: Coords(37.55187840361829, 36.66141672607705),
          ),
          ThermalWidget(
            title: "EKİNÖZÜ İÇMELERİ",
            images: const [
              'assets/places/74.jpg',
              'assets/places/75.jpg',
              'assets/places/76.jpg',
            ],
            description:
                "   Ekinözü ilçesinde bulunan içmelerin doğal mineraller açısından zengin olan suyunun, birçok hastalığa iyi geldiği rivayet edilmektedir. Yukarı İçme, Orta İçme ve Aşağı İçme olmak üzere üç içmeden oluşmaktadır. Orta İçmede çamur banyosu yapılabilmektedir.",
            coordinates: Coords(38.05441580353226, 37.17514393307306),
          ),
        ],
      ),
    );
  }
}
