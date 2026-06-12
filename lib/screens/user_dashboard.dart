import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/chat_session.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  final Color navy = const Color(0xFF001F3F);
  final Color pink = const Color(0xFFFF4081);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212), // Dark theme
      appBar: AppBar(
        backgroundColor: navy,
        title: Text("Montara Dashboard", style: GoogleFonts.lato(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatSessionScreen())),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Stats Row
            Row(
              children: [
                _buildStatCard("Ranking", "#124", Icons.emoji_events),
                _buildStatCard("Active Chats", "8", Icons.chat_bubble_outline),
              ],
            ),
            const SizedBox(height: 20),

            // Integrated Chat Access Card
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatSessionScreen())),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(color: navy, borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    Icon(Icons.message, color: pink, size: 40),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Continue Chatting", style: GoogleFonts.lato(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("Earn more by replying to recruiters.", style: GoogleFonts.lato(color: Colors.white70)),
                      ],
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            Text("Job Notifications", style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            _buildNotificationCard("Flutter Expert Needed", "Fintech Innovations", "New Match"),
            _buildNotificationCard("UI/UX Designer", "Glow Studio", "Interview Request"),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon) {
    return Expanded(
      child: Card(
        color: const Color(0xFF1E1E1E),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(icon, color: pink),
              Text(value, style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(title, style: GoogleFonts.lato(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationCard(String title, String company, String action) {
    return Card(
      color: const Color(0xFF1E1E1E),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(backgroundColor: navy, child: Icon(Icons.work, color: pink)),
        title: Text(title, style: GoogleFonts.lato(fontWeight: FontWeight.bold, color: Colors.white)),
        subtitle: Text(company, style: GoogleFonts.lato(color: Colors.grey)),
        trailing: Text(action, style: GoogleFonts.lato(color: pink, fontWeight: FontWeight.bold)),
      ),
    );
  }
}