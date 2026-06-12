import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            children: [
              Text(
                "Our Mission",
                style: GoogleFonts.lato(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF001F3F),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "JobFlow AI is revolutionizing the job market by valuing your time and insights. We believe that job searching should be an active, rewarding experience, not a passive search.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 40),
              Text(
                "How We Are Different",
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFF4081),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "By integrating AI-driven chat into the application process, we facilitate meaningful connections between candidates and employers. Every interaction on our platform is an opportunity to learn, grow, and earn.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}