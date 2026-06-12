import 'package:desk_ai/components/about_us.dart';
import 'package:desk_ai/components/why_montara.dart'; // Add this import
import 'package:desk_ai/screens/sign_in.dart';
import 'package:desk_ai/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color navy = Color(0xFF001F3F);
  static const Color pink = Color(0xFFFF4081);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: navy,
        elevation: 0,
        title: Text(" Montara AI", style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold)),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen())),
            child: Text("Sign In", style: GoogleFonts.lato(color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, top: 8, bottom: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: pink),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen())),
              child: Text("Sign Up", style: GoogleFonts.lato(color: Colors.white)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section (Keep existing code)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              color: navy,
              child: Column(
                children: [
                  Text("Work That Pays You to Connect.", textAlign: TextAlign.center, style: GoogleFonts.lato(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Text("The first AI-powered platform where your professional insights and conversations earn you real rewards.", textAlign: TextAlign.center, style: GoogleFonts.lato(fontSize: 18, color: Colors.white70)),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: pink, padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                    onPressed: () {},
                    child: Text("Find Your Perfect Role", style: GoogleFonts.lato(color: Colors.white, fontSize: 16)),
                  ),
                ],
              ),
            ),

            // Features Grid (Keep existing code)
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Text("Why Choose JobFlow?", style: GoogleFonts.lato(fontSize: 28, color: navy, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      _buildFeatureCard("Smart Matching", "AI that learns your professional profile.", Icons.psychology),
                      _buildFeatureCard("Verified Employers", "Direct access to vetted companies.", Icons.verified),
                      _buildFeatureCard("Instant Rewards", "Earn while you chat.", Icons.attach_money),
                    ],
                  ),
                ],
              ),
            ),

            // Why Montara Section (NEW)
            const WhyMontaraScreen(),

            // About Us Section
            const AboutUsScreen(),

            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              color: navy,
              width: double.infinity,
              child: Text("© 2024 Montara AI. All rights reserved.", textAlign: TextAlign.center, style: GoogleFonts.lato(color: Colors.white70, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String desc, IconData icon) {
    return SizedBox(
      width: 300,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Icon(icon, color: pink, size: 48),
              const SizedBox(height: 16),
              Text(title, style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 18, color: navy)),
              const SizedBox(height: 8),
              Text(desc, textAlign: TextAlign.center, style: GoogleFonts.lato(color: Colors.black54)),
            ],
          ),
        ),
      ),
    );
  }
}