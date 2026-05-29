# Delivery — Customer App

Multi-restaurant food delivery marketplace (customer-facing Flutter app).

## Architecture

- **Clean Architecture** with feature-based modules
- **Riverpod** for state management and DI
- **GoRouter** for navigation
- **Dio** for HTTP (ASP.NET Core API)
- **Freezed** + **json_serializable** for immutable models

See [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) and [docs/DOMAIN_MODELS.md](docs/DOMAIN_MODELS.md).

## Getting Started

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Environments

Set flavor in `lib/main.dart`:

```dart
bootstrap(flavor: AppFlavor.development); // staging | production
```

Env files: `assets/env/.env.*`

## Project Status

Foundation only — no feature screens yet. Router uses `RoutePlaceholder` (zero UI) until presentation is built.
