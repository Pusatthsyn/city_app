import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CultureWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const CultureWidget({super.key, 
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
            height: 260.0,
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
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

class CultureAndArt extends StatelessWidget {
  const CultureAndArt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CultureWidget(
            title: "Necip Fazıl Kısakürek Kültür Merkezi",
            images: const [
              'assets/places/9.jpg',
              'assets/places/10.jpg',
              'assets/places/11.jpg',
              'assets/places/12.jpg',
            ],
            description:
                "   25.000 m2 alan üzerine inşa edilmiş olan Necip Fazıl Kısakürek Kültür Merkezi 8.000 m2 kapalı alana sahiptir. \nİki adet çok amaçlı Konferans Salonu Mevcuttur. \n Büyük Salon; 472 kişiliktir. \nKüçük Salon; 186 kişiliktir. \n2 Adet Sergi Fuaye Salonu \n1 Adet Büyük Resim Sergi Salonu \n1 Adet Kütüphane \n1 Adet Açık Alanda Amfi Tiyatro Salonu \n1 Adet Bale Salonu \n6 Adet Kulis Odası \n1 Adet Stüdyo \nAyrıca Necip Fazıl Kısakürek Kültür Merkezi’nde Kablosuz internet hizmeti de verilmektedir.",
            coordinates: Coords(37.57394458865658, 36.92623887456157),
          ),
          CultureWidget(
            title: "Mehmet Akif Ersoy Kültür Merkezi",
            images: const [
              'assets/places/13.jpg',
              'assets/places/14.jpg',
              'assets/places/15.jpg',
            ],
            description:
                "   Kahramanmaraş Büyükşehir Belediyesi; şehirde kültür sanat etkinliklerine, çeşitli toplantılara ve buluşmalara ev sahipliği yapan Mehmet Akif Ersoy Kültür Merkezi’nde başlattığı yenileme çalışmalarını hızla sürdürüyor. Fen İşleri Dairesi Başkanlığı koordinesindeki ekipler tarafından mevcut yapının iç mekânında bir dizi yenilemeler gerçekleştiriliyor. Duvar ve kolonlardaki ahşap kaplamalar, mutfak ve lavabolar, salonun zemin kaplamaları ve sahne kısmı baştan sona yenileniyor.",
            coordinates: Coords(37.57841529538948, 36.92441114102885),
          ),
        ],
      ),
    );
  }
}
