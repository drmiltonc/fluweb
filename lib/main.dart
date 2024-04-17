import 'package:flutter/material.dart';
import 'package:fluweb/router/router.dart';
import 'package:fluweb/ui/layouts/auth/auth_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FluWeb',
      initialRoute: Flurorouter.rootRoute,
      onGenerateRoute: Flurorouter.router.generator,
      builder: (_, child) {
        return AuthLayout(child: child!);
      },
      theme: ThemeData.light().copyWith(
        scrollbarTheme: ScrollbarThemeData(
         thumbColor: MaterialStateProperty.all(Colors.grey[700]!.withOpacity(0.5)) 
        )
      ),
    );
  }
}
