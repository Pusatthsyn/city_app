import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MuseumWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const MuseumWidget({super.key, 
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
        const SizedBox(height: 60),
      ],
    );
  }
}

class ArkeolojiMuzesi extends StatelessWidget {
  const ArkeolojiMuzesi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MuseumWidget(
            title: "Arkeoloji Müzesi",
            images: const [
              'assets/places/1.jpg',
              'assets/places/2.jpg',
              'assets/places/3.jpg',
              'assets/places/4.jpg',
            ],
            description:
                "   Arkeoloji Müzesi, 1947 yılında Taş Medrese‘ye taşınmış olup burada uzun süre faaliyet göstermiştir. Daha sonra bugünkü yerine taşınan müze 2008’de başlayan ve 4 yıl süren çalışmalar ile yeniden düzenlenmiştir. İlgi çekici detaylarla ve görsellikle donatılan teşhir salonları ve ön-arka bahçede yer alan ve çoğunlukla çevre ilçe ve kasabalardan getirilen taş eserlerin sergilendiği teşhir alanları ile yaşayan, yaşatan ve öğreten modern bir müze olarak ziyarete açılmıştır.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          MuseumWidget(
            title: "Kurtuluş Destanı Panorama Müzesi",
            images: const [
              'assets/places/5.jpg',
              'assets/places/6.jpg',
              'assets/places/7.jpg',
              'assets/places/8.jpg',
            ],
            description:
                "   1.Dünya savaşından sonra işgal edilen Anadolu topraklarının kurtuluşunu fitilini ateşleyen Maraş milli mücadelesini tüm halkımıza anlatmak için  12 Şubat 1920 kurtuluş mücadelesi ölümsüzleştirilmiştir.10 Şubat 1920 tarihinde, Kahramanmaraş'ın düşman işgalinden kurtuluşunnun 98. yıl döneminde törenle açılmıştır. Konumu; Kahramanmaraş Onikişubat ilçesi Kültür Park içerisindedir. Müzemizde kurtuluş mücadelesi; Önce normal gösterim sonra 3D animasyon filmli anlatılmaktadır.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
