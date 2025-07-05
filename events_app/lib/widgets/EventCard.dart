import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:events_app/screens/house_party_details_screen.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String image;

  EventCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == 'House Party') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HousePartyDetailsScreen()),
          );
        }
        // Add other events as needed
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Text(title, style: GoogleFonts.lexend(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}