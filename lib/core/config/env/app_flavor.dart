/// Application build flavor aligned with ASP.NET Core environments.
enum AppFlavor {
  development,
  staging,
  production;

  static AppFlavor fromString(String value) {
    return AppFlavor.values.firstWhere(
      (f) => f.name == value.toLowerCase(),
      orElse: () => AppFlavor.development,
    );
  }
}
