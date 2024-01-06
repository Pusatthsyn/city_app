import 'package:flutter/material.dart';

class ContactSocialPage extends StatelessWidget {
  const ContactSocialPage({super.key});

  static const String _appName5 = 'İletişim & Social';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade300,
        title: const Text(
          _appName5,
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Kurumsal Numaralar',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Çağrı Merkezi: 153',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Faks: 0333 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Santral: 0333 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'AFAD: 0388 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'KASKİ: 0322 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'TEDAŞ: 0355 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'ARMADAŞ: 0366 444 55 66',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 36),
            const Text(
              'Sosyal Medya Hesaplarımız',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'E_Posta: bilgi@kahramanmaras.bel.tr',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.black,
                  onPressed: () {
                    debugPrint("Butona tıklandı");
                  },
                  iconSize: 24,
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.black,
                  onPressed: () {
                    debugPrint("Butona tıklandı");
                  },
                  iconSize: 24,
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  color: Colors.black,
                  onPressed: () {
                    debugPrint("Butona tıklandı");
                  },
                  iconSize: 24,
                ),
                const SizedBox(width: 16),
                _buildSocialMediaIcon(
                    const Icon(Icons.video_camera_front_sharp), 'YouTube'),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialMediaIcon(Icon icon, String platform) {
    return Column(
      children: [
        icon,
        const SizedBox(height: 8),
        Text(
          platform,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
