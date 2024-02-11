import 'package:comerciando_app/core/app/theme/app_theme.dart';
import 'package:comerciando_app/features/components_test/pages/components_test_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comerciando',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const ComponentsTestPage(),
    );
  }
}
