import 'package:flutter/material.dart';
import 'package:fluweb/router/router.dart';
import 'package:fluweb/ui/buttons/custom_outlined_button.dart';
import 'package:fluweb/ui/buttons/link_text.dart';
import 'package:fluweb/ui/inputs/custom_inputs.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Form(
            child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.white.withOpacity(0.3),
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_sharp),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: true,
                cursorColor: Colors.white.withOpacity(0.3),
                style: const TextStyle(color: Colors.white),
                decoration: CustomInputs.loginInputDecoration(
                    hint: 'Ingrese su contraseña',
                    label: 'Password',
                    icon: Icons.lock),
              ),
              const SizedBox(height: 20),
              CustomOutlinedButton(
                onPressed: () {},
                text: 'Ingresar',
              ),
              const SizedBox(height: 20),
              LinkText(
                text: 'Crear Nueva Cuenta',
                onPressed: () =>
                    Navigator.pushNamed(context, Flurorouter.registerRoute),
              )
            ],
          ),
        )),
      ),
    );
  }
}
