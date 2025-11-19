import 'package:flutter/material.dart';
import 'package:supercopa/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:supercopa/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Supercopa',
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,

            // **PRIMARY (accent utama)**
            primary: Color(0xFFFF4FA3),       // pink fanta  
            onPrimary: Colors.white,

            // **SECONDARY**
            secondary: Color(0xFF6A8F3F),     // green olive
            onSecondary: Colors.white,

            // **CONTRAST ACCENTS**
            tertiary: Color(0xFFFFA851),      // orange   

            // **BACKGROUND**
            background: Color(0xFFFFFFFF),    // white
            onBackground: Color(0xFF191831),  // dark indigo

            // **SURFACE / CARD**
            surface: Color(0xFFFFFFFF), 
            onSurface: Color(0xFF191831),

            // **ERROR**
            error: Colors.red,
            onError: Colors.white,
          ),

          scaffoldBackgroundColor: Colors.white,

          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFFF4FA3), // pink fanta
            foregroundColor: Colors.white,
            elevation: 2,
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF6A8F3F), // green olive
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
