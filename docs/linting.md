# Linting у проєкті diploma_work_travel_app

## Обраний інструмент
Для статичного аналізу коду в проєкті використовується Dart Analyzer разом із набором правил `flutter_lints`.

## Причини вибору
Було обрано `flutter_lints`, оскільки цей пакет містить рекомендовані правила для Flutter-проєктів, легко інтегрується та дозволяє підтримувати єдиний стиль коду.

## Конфігурація
У проєкті використовується файл `analysis_options.yaml` з таким підключенням:

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: true
    prefer_const_literals_to_create_immutables: true
    avoid_print: true