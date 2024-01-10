import 'package:city_app/food_screens/foods.dart';
import 'package:city_app/more_menu/contact_social_page.dart';
import 'package:city_app/more_menu/image_gallery_page.dart';
import 'package:city_app/more_menu/municipality_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);

  static const String _drawerName =
      "Tek Madalyalı Şehir Kahramanmaraş 'a Hoşgeldiniz";

  Widget _buildListItem(BuildContext context, IconData icon, String text,
      Widget page, Color color, String? url) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: color,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        onTap: () {
          if (url != null && url.isNotEmpty) {
            // ignore: deprecated_member_use
            launch(url);
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.amber),
          child: Text(
            _drawerName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        _buildListItem(
          context,
          Icons.home_work_outlined,
          'Belediyemiz',
          const MunicipalityPage(),
          Colors.blue.shade300,
          null,
        ),
        _buildListItem(
          context,
          Icons.local_dining_rounded,
          'Yöresel Lezzetler',
          const Yemekler(),
          Colors.red.shade300,
          null,
        ),
        _buildListItem(
          context,
          Icons.photo_camera_sharp,
          'Fotoğraf Galerisi',
          const ImageGalleryPage(),
          Colors.grey,
          null,
        ),
        _buildListItem(
          context,
          Icons.social_distance_rounded,
          'İletişim ve Sosyal',
          const ContactSocialPage(),
          Colors.orange.shade300,
          null,
        ),
      ],
    );
  }
}
