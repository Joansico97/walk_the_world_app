clean:
	@echo "╠ Cleaning project..."
	flutter clean
	@echo "╠ Get dependencies..."
	flutter pub get

gen:
	@echo "╠ Running generator..."
	flutter packages pub run build_runner build --delete-conflicting-outputs

fix_gen:
	@echo "╠ Fixing gen..."
	mkdir ./.dart_tool/flutter_gen
	echo "version: 1.0.0" > ./.dart_tool/flutter_gen/pubspec.yaml

fix:
	@echo "╠ Applying fix..."
	dart fix

run:
	@echo "╠ Running..."
	flutter run --release

run_test:
	@echo "╠ Running testing..."
	flutter test test/app_test.dart
