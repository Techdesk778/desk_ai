import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatSessionScreen extends StatelessWidget {
  const ChatSessionScreen({super.key});

  final Color navy = const Color(0xFF001F3F);
  final Color pink = const Color(0xFFFF4081);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Dark background
      appBar: AppBar(
        backgroundColor: navy,
        title: Text("Montara Chat", style: GoogleFonts.lato(color: Colors.white)),
        actions: [
          IconButton(icon: const Icon(Icons.account_balance_wallet, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // Earnings & Withdraw Bar
          _buildWithdrawalHub(),

          // Chat List
          Expanded(
            child: ListView(
              children: [
                _buildChatTile("Fintech Recruiters", "Latest: Are you available for...", "2m ago", true),
                _buildChatTile("AI Career Coach", "Latest: Your skills match the...", "1h ago", false),
                _buildChatTile("Glow Studio Team", "Latest: Your application status...", "3h ago", false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalHub() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [navy, pink.withOpacity(0.8)]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Current Balance", style: GoogleFonts.lato(color: Colors.white70)),
              Text("\$48.20", style: GoogleFonts.lato(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: Text("Withdraw", style: GoogleFonts.lato(color: navy, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildChatTile(String name, String msg, String time, bool isOnline) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(backgroundColor: navy, child: Text(name[0], style: const TextStyle(color: Colors.white))),
          if (isOnline) Positioned(right: 0, bottom: 0, child: Icon(Icons.circle, color: pink, size: 12)),
        ],
      ),
      title: Text(name, style: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold)),
      subtitle: Text(msg, style: GoogleFonts.lato(color: Colors.white54)),
      trailing: Text(time, style: GoogleFonts.lato(color: pink, fontSize: 12)),
      onTap: () {},
    );
  }
}