import 'package:app_movil_flutter_pose_detection_workout/pages/login/login_screen.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/splash/splash_screen.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/start/start_screen.dart';
import 'package:app_movil_flutter_pose_detection_workout/providers/onbording_provider.dart';
import 'package:flutter/material.dart';
import 'package:app_movil_flutter_pose_detection_workout/pages/home/home_screen.dart';
import 'package:app_movil_flutter_pose_detection_workout/providers/theme_provider.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
    FlutterStatusbarcolor.setNavigationBarColor(Colors.transparent);

    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChanger>(
          create: (_) => ThemeChanger(ThemeData.light()),
        ),
        ChangeNotifierProvider<OnbordingProvider>(
          create: (_) => OnbordingProvider(),
        ),
      ],
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
      initialRoute: '/splash',
      routes: <String, WidgetBuilder>{
        '/splash': (context) => const SplashPage(),
        '/start': (context) => const StartPage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}