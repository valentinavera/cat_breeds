import 'package:cat_breeds/src/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp( const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: messengerKey,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "SF Pro Display",
        colorScheme: const ColorScheme.light(primary: Color(0xFFf4a261)),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.w400),
          displayMedium: TextStyle(fontWeight: FontWeight.w400),
          displaySmall: TextStyle(fontWeight: FontWeight.w400),
          headlineLarge: TextStyle(fontWeight: FontWeight.w400),
          headlineMedium: TextStyle(fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(fontWeight: FontWeight.w400),
          titleLarge: TextStyle(fontWeight: FontWeight.w400),
          titleMedium: TextStyle(fontWeight: FontWeight.w400),
          titleSmall: TextStyle(fontWeight: FontWeight.w400),
          bodyLarge: TextStyle(fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(fontWeight: FontWeight.w400),
          bodySmall: TextStyle(fontWeight: FontWeight.w400),
          labelLarge: TextStyle(fontWeight: FontWeight.w400),
          labelMedium: TextStyle(fontWeight: FontWeight.w400),
          labelSmall: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      home: const HomePage(),
    );
  }
}

final messengerKey = GlobalKey<ScaffoldMessengerState>();