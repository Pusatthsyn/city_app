import 'package:city_app/user_login/register_login.dart';
import 'package:city_app/user_login/sign_up.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatelessWidget {
  UserLogin({super.key});
  final ColorsItems colorsItems = ColorsItems();
  // ignore: non_constant_identifier_names
  final String AppName = 'Giriş';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppName, style: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            const Text(
              'Oturum Aç',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            /*
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GuestPhotoAdd()),
                );
              },
              icon: const Icon(Icons.supervised_user_circle_sharp),
              label: const Text('Misafir Girişi'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.purple, width: 2),
                ),
                minimumSize: const Size(375, 50),
              ),
            ),
            */
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MailLogin()),
                );
              },
              icon: const Icon(Icons.mail),
              label: const Text('Mail ile Giriş Yap'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.amber, width: 2),
                ),
                minimumSize: const Size(300, 50),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              icon: const Icon(Icons.person_add_alt_1_sharp),
              label: const Text('Şimdi Kayıt Ol'),
              style: ElevatedButton.styleFrom(
                foregroundColor: colorsItems.black,
                backgroundColor: colorsItems.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(color: Colors.amber, width: 2),
                ),
                minimumSize: const Size(300, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorsItems {
  final Color black = Colors.black;
  final Color white = Colors.white;
  final Color froly = const Color(0xffED617A);
}
