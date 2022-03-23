import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renmoney_test/provider/theme_provider.dart';

class ChangeTheme extends StatefulWidget {
  const ChangeTheme();

  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeProvider.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        });
  }
}
