import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/homepage.dart';
import 'screens/user_dashboard.dart';
import 'screens/admin_dashboard.dart';

void main() {
  runApp(const RecruitmentApp());
}

class RecruitmentApp extends StatelessWidget {
  const RecruitmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Montara AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF001F3F)),
        useMaterial3: true,
        // Global Lato font
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/user': (context) => const UserDashboard(),
        '/admin': (context) => const AdminDashboard(),
      },
    );
  }
}