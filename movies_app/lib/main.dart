import 'package:flutter/material.dart';
import 'package:movies_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Peliculas',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomeScreen(),
          'details': (_) => DetailsScreen()
        },
        // tema principal de la app
        theme: ThemeData.light()
            .copyWith(appBarTheme: AppBarTheme(color: Colors.lightBlueAccent)));
  }
}
