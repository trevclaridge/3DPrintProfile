part of view;

class CustomTheme {
  static ThemeData get defaultTheme {
    return ThemeData(
      scaffoldBackgroundColor: Palette.background,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        backgroundColor: Palette.background,
        titleTextStyle: TextStyle(color: Palette.text, fontSize: 18),
        iconTheme: IconThemeData(color: Palette.accent),
      ),
    );
  }
}
