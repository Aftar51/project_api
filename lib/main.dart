import 'package:flutter/material.dart';
import 'package:project_api/ui/login_screen.dart';
import 'package:project_api/ui/main-screen.dart';
import 'package:project_api/ui/photos_screen.dart';

import 'ui/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginScreen(),
        debugShowCheckedModeBanner: false,
        routes:
        {
          '/register' : (context) => RegisterScreen(),
          '/login' : (context) => LoginScreen(),
          '/photos' : (context) => PhotosScreen(),
        }
    );
  }
}