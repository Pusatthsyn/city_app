import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MailLogin extends StatefulWidget {
  const MailLogin({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MailLoginState createState() => _MailLoginState();
}

class _MailLoginState extends State<MailLogin> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giriş Yap"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Lütfen e-posta adresinizi girin';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'E-posta',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return 'Lütfen bir şifre girin';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _login();
                  }
                },
                child: const Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _login() {
    final String email = _emailController.text;
    final String password = _passwordController.text;

// Mail ile giriş yapma işlemi gerçekleştirilir.
// Örneğin, burada bir HTTP isteği gönderilebilir.
    if (kDebugMode) {
      print('E-posta: $email');
    }
    if (kDebugMode) {
      print('Şifre: $password');
    }
  }
}
