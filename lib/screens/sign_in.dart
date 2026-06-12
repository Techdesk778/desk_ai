import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Welcome Back", style: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold, color: const Color(0xFF001F3F))),
                  const SizedBox(height: 20),
                  TextField(decoration: InputDecoration(labelText: "Email", labelStyle: GoogleFonts.lato())),
                  const SizedBox(height: 10),
                  TextField(decoration: InputDecoration(labelText: "Password", labelStyle: GoogleFonts.lato()), obscureText: true),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF4081)),
                      onPressed: () => Navigator.pushReplacementNamed(context, '/user'),
                      child: Text("Sign In", style: GoogleFonts.lato(color: Colors.white, fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}