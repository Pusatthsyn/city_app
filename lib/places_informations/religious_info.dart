import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ReligiousWidget extends StatelessWidget {
  final String title;
  final List<String> images;
  final String description;
  final Coords coordinates;

  const ReligiousWidget({super.key, 
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

class Religious extends StatelessWidget {
  const Religious({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ReligiousWidget(
            title: "ULU CAMİİ",
            images: const [
              'assets/places/16.jpg',
              'assets/places/17.jpg',
              'assets/places/18.jpg',
            ],
            description:
                "   Kahramanmaraş Ulu Camii, şehrin en eski tarihi yapılarından birisidir. Özgün bir Dulkadiroğlu Beyliği eseri olan yapının farklı inşa tarihi bulunmaktadır. Fakat Dulkadirli Beyi Alaüddevle’nin 1501 yılında yenilenircesine yaptırdığı onarım sebebi ile bu tarih yapının inşa tarihi olarak kabul edilmektedir.",
            coordinates: Coords(37.584727249451326, 36.9266977172958),
          ),
          ReligiousWidget(
            title: "TAŞ MEDRESE VE TÜRBESİ",
            images: const [
              'assets/places/19.jpg',
              'assets/places/20.jpg',
              'assets/places/21.jpg',
            ],
            description:
                "   Kent meydanında Ulu Cami ile bütünlük oluşturan yapı; Dulkadirli Alaüddevle Bey tarafından XV. yüzyıl sonlarında inşa ettirdiği anlaşılmaktadır. Tek katlı, açık avlulu, tek eyvanlı medrese plan düzeni gösteren yapı, Güneyinde mescidi, gerisinde açık avlusu ve öğrenci odaları binayı tamamlar. Yapıda ön plana çıkan düzgün kesme taş işçiliği ve Memluklu tarzı mukarnaslı pencere uygulaması önemlidir.",
            coordinates: Coords(37.58512258365092, 36.92644089305495),
          ),
        ],
      ),
    );
  }
}
