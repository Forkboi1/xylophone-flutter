import 'package:flutter/material.dart';

import 'app_colors.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "xylophon App",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
          backgroundColor: Theme.of(context).primaryColorDark,
        ),
        body: const Center(
          child: AppColors(),
        ),
      ),
    );
  }
}
