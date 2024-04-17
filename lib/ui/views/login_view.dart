import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 350,
            ),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  cursorColor: Colors.white.withOpacity(0.3),
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                      hint: 'Ingrese su correo',
                      label: 'Email',
                      icon: Icons.email_sharp),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  cursorColor: Colors.white.withOpacity(0.3),
                  style: const TextStyle(color: Colors.white),
                  decoration: buildInputDecoration(
                      hint: 'Ingrese su contraseña',
                      label: 'Password',
                      icon: Icons.lock),
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: const Text('Enviar'))
              ],
            ))),
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) =>
      InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.grey),
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey),
      );
}
