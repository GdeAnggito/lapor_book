import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lapor_book_bk/firebase_options.dart';
import 'package:lapor_book_bk/pages/dashboard/DashboardPages.dart';
import 'package:lapor_book_bk/pages/splashpage.dart';
import 'package:lapor_book_bk/pages/AddFormPage.dart';
import 'package:lapor_book_bk/pages/DetailPage.dart';
import 'package:lapor_book_bk/pages/LoginPage.dart';
import 'package:lapor_book_bk/pages/RegisterPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    title: 'Lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      '/add': (context) => AddFormPage(),
      '/detail': (context) => DetailPage(),
    },
  ));
}
