import 'package:flutter/material.dart';

class WeddingDetailsScreen extends StatefulWidget {
  @override
  _WeddingDetailsScreenState createState() => _WeddingDetailsScreenState();
}

class _WeddingDetailsScreenState extends State<WeddingDetailsScreen> {
  int selectedServiceTab = 0; // 0 for Bulk Food Delivery, 1 for Catering Service
  int selectedCategoryTab = 0; // 0 for ALL, 1 for Breakfast, 2 for Lunch & Dinner, 3 for Snacks
  
  final List<String> serviceTabs = ['Bulk Food Delivery', 'Catering Service'];
  final List<String> categoryTabs = ['ALL', 'Breakfast', 'Lunch & Dinner', 'Snacks'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA), // Brighter background
      body: Stack(
        children: [
          // Banner and header
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: screenWidth,
              height: 280, // Reduced height to move pill tabs up
              child: Stack(
                children: [
                  // Banner image - Wedding image only
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/wedding.png',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Color(0xFF6318AF),
                          child: Center(
                            child: Icon(
                              Icons.favorite,
                              size: 80,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  // Lighter dark overlay for brighter appearance
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.black.withOpacity(0.4),
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
                            Colors.black.withOpacity(0.6),
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
                  // Segmented Pill Tabs for Service Types - Moved up
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 60, // Moved higher
                    child: Container(
                      height: 55, // Increased height for bigger text
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(27.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: serviceTabs.asMap().entries.map((entry) {
                          int index = entry.key;
                          String tab = entry.value;
                          bool isActive = selectedServiceTab == index;
                          
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedServiceTab = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: isActive ? Colors.white : Colors.transparent,
                                  borderRadius: BorderRadius.circular(23.5),
                                  boxShadow: isActive ? [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ] : null,
                                ),
                                child: Center(
                                  child: Text(
                                    tab,
                                    style: TextStyle(
                                      color: isActive ? Color(0xFF6318AF) : Color(0xFF60666B),
                                      fontSize: 16, // Increased font size
                                      fontFamily: 'Lexend',
                                      fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Category Tabs (Responsive and stretched to screen size)
          Positioned(
            left: 0,
            top: 280,
            right: 0,
            child: Container(
              height: 60,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Stretch to screen size
                children: categoryTabs.asMap().entries.map((entry) {
                  int index = entry.key;
                  String category = entry.value;
                  bool isActive = selectedCategoryTab == index;
                  
                  return Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryTab = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    category,
                                    style: TextStyle(
                                      color: isActive ? Color(0xFFE70472) : Color(0xFF60666B),
                                      fontSize: 12,
                                      fontFamily: 'Lexend',
                                      fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                                      height: 0,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                if (index == 0) // Show count only for ALL
                                  Text(
                                    ' (8)',
                                    style: TextStyle(
                                      color: isActive ? Color(0xFFE70472) : Color(0xFF60666B),
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
                                margin: EdgeInsets.only(top: 8),
                                height: 2,
                                width: 30,
                                color: Color(0xFFE70472),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          // Content based on selected service tab and category
          Positioned(
            left: 0,
            top: 340,
            right: 0,
            bottom: 80,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: _buildContent(),
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
                        '3 Platters',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
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

  Widget _buildContent() {
    // Show "No Platters Available" for Snacks category
    if (selectedCategoryTab == 3) { // Snacks
      return _buildNoPlattersAvailable();
    }
    
    // Show food content for both service types when not Snacks
    return _buildFoodContent();
  }

  Widget _buildNoPlattersAvailable() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: Icon(
              Icons.close,
              size: 40,
              color: Colors.grey[400],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'No Platters Available',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              fontFamily: 'Lexend',
              height: 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodContent() {
    return Column(
      children: [
        _foodCard(
          context,
          image: 'assets/images/south_breakfast.png',
          title: 'South Breakfast',
          min: 50,
          max: 500,
          price: 299,
          categories: '15 Categories & 60 Items',
        ),
        SizedBox(height: 16),
        _foodCard(
          context,
          image: 'assets/images/samosa_plate.png',
          title: 'Samosa Platter',
          min: 50,
          max: 500,
          price: 899,
          categories: '20 Categories & 80 Items',
        ),
      ],
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
                      color: Colors.black.withOpacity(0.8), // Increased opacity
                      fontSize: 16,
                      fontFamily: 'Lexend',
                      height: 0,
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
                              color: Colors.black.withOpacity(0.8), // Increased opacity
                              fontSize: 16,
                              fontFamily: 'Lexend',
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