# Linting in the diploma_work_travel_app Project

## Selected Tool
Dart Analyzer is used for static code analysis in the project together with the `flutter_lints` rule set.

## Reasons for Choosing It
`flutter_lints` was chosen because this package contains recommended rules for Flutter projects, is easy to integrate, and helps maintain a consistent code style.

## Configuration
The project uses the `analysis_options.yaml` file with the following inclusion:

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: true
    prefer_const_literals_to_create_immutables: true
    avoid_print: true