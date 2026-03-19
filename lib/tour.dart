/// Модель туристичного туру.
class Tour {
  /// Унікальний ідентифікатор туру.
  final String id;

  /// Назва туру.
  final String title;

  /// Країна проведення туру.
  final String country;

  /// Місто проведення туру.
  final String city;

  /// Тривалість туру в днях.
  final int days;

  /// Вартість туру.
  final double price;

  /// Опис туру.
  final String description;

  /// Створює об'єкт туристичного туру.
  const Tour({
    required this.id,
    required this.title,
    required this.country,
    required this.city,
    required this.days,
    required this.price,
    required this.description,
  });
}
