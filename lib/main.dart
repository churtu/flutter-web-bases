import 'package:bases_web/locator.dart';
import 'package:bases_web/router/app_router.dart';
import 'package:bases_web/ui/layout/main_layout_page.dart';
import 'package:bases_web/ui/services/navigation_service.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  AppRouter.configureRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas App',
      initialRoute: '/',
      onGenerateRoute: AppRouter.router.generator,
      navigatorKey: locator<NavigationService>().navigationKey,
      builder: (context, child) {
        return MainLayoutPage( child: child!);
      },
    );
  }
}