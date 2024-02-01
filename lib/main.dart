import 'package:flutter/material.dart';
import 'package:laptopharbor/Auth/login_page.dart';
import 'package:laptopharbor/Auth/register_page.dart';
import 'package:laptopharbor/src/view/screen/home_screen.dart';
import 'package:laptopharbor/src/view/screen/profile_screen.dart';
import 'dart:ui';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'auth/login_or_register.dart';
import 'theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
