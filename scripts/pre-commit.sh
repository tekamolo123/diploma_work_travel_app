#!/bin/sh
echo "Running dart format..."
dart format lib

echo "Running flutter analyze..."
flutter analyze

if [ $? -ne 0 ]; then
  echo "Commit aborted: analyzer found issues."
  exit 1
fi

echo "Checks passed."
exit 0
