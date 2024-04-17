import 'package:flutter/material.dart';

class NoPageFoundView extends StatelessWidget {
  const NoPageFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '404 - Página no encontrada',
      ),
    );
  }
}
