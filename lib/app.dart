import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'routes.dart';
import 'splash_page.dart';
import 'tour.dart';
import 'tour_details_page.dart';

/// Головний віджет застосунку.
///
/// Налаштовує тему, стартовий маршрут і таблицю навігації.
class MyApp extends StatelessWidget {
  /// Створює головний віджет застосунку.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (_) => const SplashPage(),
        AppRoutes.login: (_) => const LoginPage(),
        AppRoutes.register: (_) => const RegisterPage(),
        AppRoutes.home: (_) => const HomePage(),
      },

      /// Генерує маршрути, які потребують передачі аргументів.
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.tourDetails) {
          final args = settings.arguments;
          if (args is Tour) {
            return MaterialPageRoute(
              builder: (_) => TourDetailsPage(tour: args),
              settings: settings,
            );
          }
        }
        return null;
      },
    );
  }
}
