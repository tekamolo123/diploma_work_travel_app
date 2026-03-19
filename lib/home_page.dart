import 'package:flutter/material.dart';

import 'routes.dart';
import 'auth_service.dart';
import 'mock_tours.dart';
import 'tour.dart';

/// Головна сторінка застосунку зі списком доступних турів.
class HomePage extends StatefulWidget {
  /// Створює головну сторінку зі списком турів.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchC = TextEditingController();

  @override
  void dispose() {
    _searchC.dispose();
    super.dispose();
  }

  /// Повертає список турів, відфільтрований за пошуковим запитом.
  ///
  /// Пошук виконується за назвою туру, країною та містом.
  List<Tour> get _filtered {
    final q = _searchC.text.trim().toLowerCase();
    if (q.isEmpty) return mockTours;
    return mockTours.where((t) {
      final hay = '${t.title} ${t.country} ${t.city}'.toLowerCase();
      return hay.contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final user = AuthService.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Тури'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Вийти',
            onPressed: () {
              AuthService.logout();
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.login,
                (r) => false,
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (user != null) ...[
            Text(
              'Вітаємо, ${user.nickname} 👋',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
          ],
          TextField(
            controller: _searchC,
            decoration: const InputDecoration(
              labelText: 'Пошук туру',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 12),
          ..._filtered.map(
            (tour) => Card(
              child: ListTile(
                title: Text(tour.title),
                subtitle: Text(
                  '${tour.country}, ${tour.city} • ${tour.days} днів',
                ),
                trailing: Text('\$${tour.price.toStringAsFixed(0)}'),
                onTap: () => Navigator.pushNamed(
                  context,
                  AppRoutes.tourDetails,
                  arguments: tour,
                ),
              ),
            ),
          ),
          if (_filtered.isEmpty)
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: Center(child: Text('Нічого не знайдено')),
            ),
        ],
      ),
    );
  }
}
