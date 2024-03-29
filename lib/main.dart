import 'package:flutter/material.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/home/home.dart';
import 'package:app_movil_flutter_pose_detection_workout/providers/theme_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: const MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  const MaterialAppWithTheme({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.getTheme(),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (context) => const HomePage(),
      },
    );
  }
}
