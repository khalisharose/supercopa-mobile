import 'package:flutter/material.dart';
import 'package:supercopa/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supercopa',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.


        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: MaterialColor(0xFF5D753E, {
              50: Color(0xFFB1CC8F),
              100: Color(0xFFA0B981),
              200: Color(0xFF8AA86C),
              300: Color(0xFF7D9C5F),
              400: Color(0xFF6F8C4A),
              500: Color(0xFF5D753E),
              600: Color(0xFF506636),
              700: Color(0xFF43582E),
              800: Color(0xFF374B26),
              900: Color(0xFF2B3E1E),
            }),
          ).copyWith(
            secondary: const Color(0xFFB1CC8F),
          ),
        ),
      home: MyHomePage(),
    );
  }
}