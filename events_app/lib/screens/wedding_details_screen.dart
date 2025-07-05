import 'package:flutter/material.dart';

class WeddingDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FB),
      body: Stack(
        children: [
          // Banner and header
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 258,
              child: Stack(
                children: [
                  // Banner image
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/wedding.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Color(0xFF6318AF),
                          child: Center(
                            child: Icon(
                              Icons.event,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Dark overlay for better text readability
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.6),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Top gradient overlay
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 88,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8),
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          // Status bar
                          Container(
                            height: 40,
                            child: Row(
                              children: [
                                SizedBox(width: 24),
                                Text(
                                  '9:41',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    height: 0,
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // App bar
                          Container(
                            height: 48,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Back button
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(44.44),
                                    ),
                                    child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                                  ),
                                ),
                                Text(
                                  'Wedding',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Lexend',
                                    fontWeight: FontWeight.bold,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(width: 42),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Tabs
                  Positioned(
                    left: 0,
                    top: 172,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 86,
                      child: Column(
                        children: [
                          // Tabs
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Bulk Food Delivery',
                                        style: TextStyle(
                                          color: Color(0xFF6318AF),
                                          fontSize: 14,
                                          fontFamily: 'Lexend',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.8),
                                      border: Border.all(color: Color(0xFFE4E5E6)),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Catering Service',
                                        style: TextStyle(
                                          color: Color(0xFF60666B),
                                          fontSize: 14,
                                          fontFamily: 'Lexend',
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Category Tabs
                          Container(
                            height: 44,
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                _categoryTab('ALL', '(8)', Color(0xFFE70472), isActive: true),
                                _categoryTab('Breakfast', '', Color(0xFF60666B)),
                                _categoryTab('Lunch & Dinner', '', Color(0xFF60666B)),
                                _categoryTab('Snacks', '', Color(0xFF60666B)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Content
          Positioned(
            left: 0,
            top: 274,
            right: 0,
            bottom: 80,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  _foodCard(
                    context,
                    image: 'assets/images/south_breakfast.png',
                    title: 'Wedding Special Breakfast',
                    min: 50,
                    max: 500,
                    price: 599,
                    categories: '15 Categories & 60 Items',
                  ),
                  SizedBox(height: 16),
                  _foodCard(
                    context,
                    image: 'assets/images/samosa_plate.png',
                    title: 'Grand Wedding Feast',
                    min: 50,
                    max: 500,
                    price: 899,
                    categories: '20 Categories & 80 Items',
                  ),
                ],
              ),
            ),
          ),
          // Bottom Cart Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      _cartImage('assets/images/south_breakfast.png'),
                      _cartImage('assets/images/samosa_plate.png'),
                      SizedBox(width: 8),
                      Text(
                        '2 Platters',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 15.33,
                          fontFamily: 'Lexend',
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Color(0xFF6318AF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'View Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.keyboard_arrow_up, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryTab(String label, String count, Color color, {bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontFamily: 'Lexend',
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  height: 0,
                ),
              ),
              if (count.isNotEmpty)
                Text(
                  count,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    fontFamily: 'Lexend',
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    height: 0,
                  ),
                ),
            ],
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.only(top: 4),
              height: 2,
              width: 30,
              color: Color(0xFFE70472),
            ),
        ],
      ),
    );
  }

  Widget _foodCard(BuildContext context,
      {required String image,
      required String title,
      required int min,
      required int max,
      required int price,
      required String categories}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food image and "Popular" badge
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    image,
                    width: double.infinity,
                    height: 148,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: double.infinity,
                        height: 148,
                        color: Colors.grey[300],
                        child: Icon(
                          Icons.restaurant,
                          size: 50,
                          color: Colors.grey[600],
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 16,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF9765CA),
                          Color(0xFF7D3EBC),
                          Color(0xFF6318AF),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, size: 16, color: Color(0xFF60666B)),
                          SizedBox(width: 6),
                          Text(
                            'Min $min - Max $max',
                            style: TextStyle(
                              color: Color(0xFF60666B),
                              fontSize: 12,
                              fontFamily: 'Lexend',
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Starts at ',
                            style: TextStyle(
                              color: Color(0xFF60666B),
                              fontSize: 14,
                              fontFamily: 'Lexend',
                              height: 0,
                            ),
                          ),
                          Text(
                            '₹$price',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    categories,
                    style: TextStyle(
                      color: Color(0xFF6318AF),
                      fontSize: 14,
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 6,
                    children: [
                      _categoryItem('5 Live Counter'),
                      _categoryItem('8 Main Course'),
                      _categoryItem('6 Desserts'),
                      _categoryItem('4 Appetizers'),
                      _categoryItem('3 Beverages'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _categoryItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFF5F6FB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF484C50),
          fontSize: 11,
          fontFamily: 'Lexend',
          height: 0,
        ),
      ),
    );
  }

  Widget _cartImage(String image) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      child: ClipOval(
        child: Image.asset(
          image,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 32,
              height: 32,
              color: Colors.grey[300],
              child: Icon(
                Icons.restaurant,
                size: 16,
                color: Colors.grey[600],
              ),
            );
          },
        ),
      ),
    );
  }
} 