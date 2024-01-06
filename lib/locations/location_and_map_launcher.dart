import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ArkeolojiMuzesi extends StatefulWidget {
  const ArkeolojiMuzesi({Key? key}) : super(key: key);

  @override
  _ArkeolojiMuzesiState createState() => _ArkeolojiMuzesiState();
}

class _ArkeolojiMuzesiState extends State<ArkeolojiMuzesi> {
  Location location = Location();

  final List<String> images = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                items: images.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(
                        ),
                        
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 280.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 300),
                  viewportFraction: 0.8,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () async {
                  var value = await location.getLocation();
                  if (await MapLauncher.isMapAvailable(MapType.google) != null) {
                    MapLauncher.showDirections(
                      mapType: MapType.google,
                      destination: Coords(37.57394458865658, 36.92623887456157),
                      origin: Coords(
                        value.latitude!.toDouble(),
                        value.longitude!.toDouble(),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.assistant_navigation),
                label: const Text("Arkeoloji Müzesine Git"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
