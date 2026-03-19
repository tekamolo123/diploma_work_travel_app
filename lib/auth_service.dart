import 'dart:collection';
import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';

/// Модель авторизованого користувача.
class AuthUser {
  /// Нікнейм користувача.
  final String nickname;

  /// Email користувача.
  final String email;

  /// Створює об'єкт авторизованого користувача.
  const AuthUser({required this.nickname, required this.email});
}

/// Сервіс для локальної автентифікації користувача.
class AuthService {
  AuthService._();

  static final Map<String, Map<String, String>> _usersByEmail = HashMap();
  static AuthUser? _currentUser;

  /// Повертає поточного авторизованого користувача.
  static AuthUser? get currentUser => _currentUser;

  /// Показує, чи є користувач авторизованим.
  static bool get isLoggedIn => _currentUser != null;

  /// Завершує поточну сесію користувача.
  static void logout() {
    _currentUser = null;
  }

  /// Генерує випадкову сіль для хешування пароля.
  static String _genSalt([int length = 16]) {
    final rnd = Random.secure();
    final bytes = List<int>.generate(length, (_) => rnd.nextInt(256));
    return base64UrlEncode(bytes);
  }

  /// Повертає SHA-256 хеш пароля з використанням солі.
  static String _hashPassword({
    required String password,
    required String salt,
  }) {
    final bytes = utf8.encode('$salt:$password');
    return sha256.convert(bytes).toString();
  }

  /// Реєструє нового користувача за нікнеймом, email і паролем.
  static Future<AuthUser> register({
    required String nickname,
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final key = email.trim().toLowerCase();
    if (_usersByEmail.containsKey(key)) {
      throw Exception('Користувач з таким email вже існує');
    }

    final salt = _genSalt();
    final passwordHash = _hashPassword(password: password, salt: salt);

    _usersByEmail[key] = {
      'nickname': nickname.trim(),
      'salt': salt,
      'passwordHash': passwordHash,
    };

    return AuthUser(nickname: nickname.trim(), email: key);
  }

  /// Виконує вхід користувача за email і паролем.
  static Future<AuthUser> login({
    required String email,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));

    final key = email.trim().toLowerCase();
    final data = _usersByEmail[key];

    const msg = 'Невірний email або пароль';

    if (data == null) {
      throw Exception(msg);
    }

    final salt = data['salt']!;
    final storedHash = data['passwordHash']!;
    final calcHash = _hashPassword(password: password, salt: salt);

    if (storedHash != calcHash) {
      throw Exception('Невірний email або пароль');
    }

    _currentUser = AuthUser(nickname: data['nickname']!, email: key);
    return _currentUser!;
  }
}
