import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyMontaraScreen extends StatelessWidget {
  const WhyMontaraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color navy = Color(0xFF001F3F);

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Why Montara AI?",
                  style: GoogleFonts.lato(fontSize: 32, fontWeight: FontWeight.bold, color: navy)),
              const SizedBox(height: 20),
              Text(
                "The Future of Work is Rewarding. Every day, millions of professionals chat, apply, and network online without receiving a cent for their time. At Montara AI, we believe your career journey should be compensated.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 40),
              _buildBenefit(Icons.chat_bubble, "Earn While You Chat", "Every meaningful interaction in our app contributes to your Montara balance."),
              _buildBenefit(Icons.psychology, "AI-Driven Focus", "Stop wasting time on irrelevant listings. Our AI learns your career goals."),
              _buildBenefit(Icons.trending_up, "Transparent Growth", "Track your progress and your earnings in one unified, clean dashboard."),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBenefit(IconData icon, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFFFF4081), size: 32),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.lato(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 4),
                Text(desc, style: GoogleFonts.lato(color: Colors.black54, fontSize: 16)),
              ],
            ),
          )
        ],
      ),
    );
  }
}