import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        title: const Text("Kayıt Ol"),
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
                    _register(context);
                  }
                },
                child: const Text('Şimdi Kayıt Ol'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _register(BuildContext context) {
// Burada üye kaydı yapılır, örnek olarak e-posta ve şifre yazdırılır.
    if (kDebugMode) {
      print('E-posta: ${_emailController.text}');
    }
    if (kDebugMode) {
      print('Şifre: ${_passwordController.text}');
    }
  }
}
