import 'package:flutter/material.dart';
import 'package:events_app/screens/house_party_details_screen.dart';

class EventsScreen extends StatelessWidget {
  final List<Map<String, String>> events = [
    {'name': 'House Party', 'image': 'house_party.png'},
    {'name': 'Farmhouse Party', 'image': 'farmhouse_party.png'},
    {'name': 'Kitty Party', 'image': 'kitty_party.png'},
    {'name': 'Birthday', 'image': 'birthday.png'},
    {'name': 'Pooja', 'image': 'pooja.png'},
    {'name': 'Cocktail Party', 'image': 'cocktail_party.png'},
    {'name': 'Office Party', 'image': 'office_party.png'},
    {'name': 'Get Together', 'image': 'get_together.png'},
    {'name': 'House Warming', 'image': 'house_warming.png'},
    {'name': 'Haldi', 'image': 'haldi.png'},
    {'name': 'Wedding', 'image': 'wedding.png'},
    {'name': 'Reception', 'image': 'reception.png'},
    {'name': 'Engagement', 'image': 'engagement.png'},
    {'name': 'Workshop', 'image': 'workshop.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          'Events',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose Your Event',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Select from our curated event categories',
                  style: TextStyle(
                    color: Color(0xFF60666B),
                    fontSize: 16,
                    fontFamily: 'Lexend',
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          
          // Horizontal scrollable card carousel
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Create rows of 2 cards each for better layout
                  for (int i = 0; i < events.length; i += 2)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: EventCard(
                              title: events[i]['name']!,
                              imageAsset: 'assets/images/${events[i]['image']}',
                              onTap: () => _navigateToEvent(context, events[i]['name']!),
                            ),
                          ),
                          SizedBox(width: 16),
                          if (i + 1 < events.length)
                            Expanded(
                              child: EventCard(
                                title: events[i + 1]['name']!,
                                imageAsset: 'assets/images/${events[i + 1]['image']}',
                                onTap: () => _navigateToEvent(context, events[i + 1]['name']!),
                              ),
                            )
                          else
                            Expanded(child: SizedBox()), // Empty space if odd number
                        ],
                      ),
                    ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToEvent(BuildContext context, String eventName) {
    if (eventName == 'House Party' || eventName == 'Wedding') {
      // Both Wedding and House Party navigate to the same screen
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HousePartyDetailsScreen(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('$eventName details coming soon!'),
          backgroundColor: Color(0xFF6318AF),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
    }
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String imageAsset;
  final VoidCallback onTap;

  const EventCard({
    Key? key,
    required this.title,
    required this.imageAsset,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 12,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Background image with safe cropping
              Image.asset(
                imageAsset,
                fit: BoxFit.cover,
                alignment: Alignment.center, // Safe cropping to keep subjects visible
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF6318AF),
                          Color(0xFF9765CA),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.event,
                            size: 40,
                            color: Colors.white,
                          ),
                          SizedBox(height: 8),
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Lexend',
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              
              // Dark gradient overlay for text readability
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.7),
                    ],
                    stops: [0.0, 0.6, 1.0],
                  ),
                ),
              ),
              
              // Centered title text overlay
              Positioned(
                left: 12,
                right: 12,
                bottom: 16,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Subtle highlight effect on tap
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: onTap,
                  splashColor: Colors.white.withOpacity(0.1),
                  highlightColor: Colors.white.withOpacity(0.05),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}