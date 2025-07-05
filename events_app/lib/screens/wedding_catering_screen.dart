import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeddingCateringScreen extends StatefulWidget {
  @override
  State<WeddingCateringScreen> createState() => _WeddingCateringScreenState();
}

class _WeddingCateringScreenState extends State<WeddingCateringScreen> {
  int selectedTab = 1; // 0: Bulk Food Delivery, 1: Catering Service
  int selectedCategoryIndex = 0; // 0: ALL, 1: Breakfast, 2: Lunch & Dinner, 3: Snacks
  
  final List<String> categories = ['ALL', 'Breakfast', 'Lunch & Dinner', 'Snacks'];

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
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: 15,
                                    letterSpacing: 0.07,
                                    height: 1,
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
                                  style: GoogleFonts.lexend(
                                    color: Colors.white,
                                    fontSize: 18,
                                    height: 1,
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
                                  child: GestureDetector(
                                    onTap: () => setState(() => selectedTab = 0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        color: selectedTab == 0
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.8),
                                        border: selectedTab == 0
                                            ? null
                                            : Border.all(color: Color(0xFFE4E5E6)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Bulk Food Delivery',
                                          style: GoogleFonts.lexend(
                                            color: selectedTab == 0
                                                ? Color(0xFF60666B)
                                                : Color(0xFF60666B),
                                            fontSize: 14,
                                            height: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () => setState(() => selectedTab = 1),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        color: selectedTab == 1
                                            ? Colors.white
                                            : Colors.white.withOpacity(0.8),
                                        border: selectedTab == 1
                                            ? null
                                            : Border.all(color: Color(0xFFE4E5E6)),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Catering Service',
                                          style: GoogleFonts.lexend(
                                            color: selectedTab == 1
                                                ? Color(0xFF6318AF)
                                                : Color(0xFF60666B),
                                            fontSize: 14,
                                            height: 1,
                                          ),
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
                            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                            child: Row(
                              children: [
                                for (int i = 0; i < categories.length; i++)
                                  GestureDetector(
                                    onTap: () => setState(() => selectedCategoryIndex = i),
                                    child: Container(
                                      margin: EdgeInsets.only(right: 12),
                                      padding: EdgeInsets.symmetric(horizontal: 14.33, vertical: 10),
                                      child: Row(
                                        children: [
                                          Text(
                                            categories[i],
                                            style: GoogleFonts.lexend(
                                              color: selectedCategoryIndex == i && categories[i] == 'Snacks'
                                                  ? Color(0xFFE70472)
                                                  : Color(0xFF60666B),
                                              fontSize: 12,
                                              height: 1,
                                            ),
                                          ),
                                          if (categories[i] == 'ALL' || (selectedCategoryIndex == i && categories[i] == 'Snacks'))
                                            Text(
                                              categories[i] == 'ALL' ? ' (8)' : ' (8)',
                                              style: GoogleFonts.lexend(
                                                color: selectedCategoryIndex == i && categories[i] == 'Snacks'
                                                    ? Color(0xFFE70472)
                                                    : Color(0xFF60666B),
                                                fontSize: 12,
                                                height: 1,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
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
          // Content based on selected category
          Positioned(
            left: 0,
            top: 274,
            right: 0,
            bottom: 80,
            child: _buildCategoryContent(),
          ),
          // Bottom Cart Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Row(
                    children: [
                      _cartImage('assets/images/south_breakfast.png'),
                      _cartImage('assets/images/south_breakfast.png'),
                      SizedBox(width: 8),
                      Text(
                        '3 Platters',
                        style: GoogleFonts.lexend(
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 15.33,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 95,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFF6318AF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'View Cart',
                          style: GoogleFonts.lexend(
                            color: Colors.white,
                            fontSize: 12,
                            height: 1,
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

  Widget _buildCategoryContent() {
    if (selectedCategoryIndex == 3) { // Snacks category
      return _buildNoPlatterScreen();
    } else {
      return _buildFoodListScreen();
    }
  }

  Widget _buildNoPlatterScreen() {
    return Center(
      child: Container(
        height: 96,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              child: SvgPicture.asset(
                'assets/images/healthicons_no-outline.svg',
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'No Platters Available',
              style: GoogleFonts.lexend(
                color: Colors.black,
                fontSize: 14,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodListScreen() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          _foodCard(
            context,
            image: 'assets/images/south_breakfast.png',
            title: 'South Breakfast',
            min: 10,
            max: 120,
            price: 299,
            categories: '12 Categories & 40 Items',
          ),
          SizedBox(height: 16),
          _foodCard(
            context,
            image: 'assets/images/south_breakfast.png',
            title: 'Panjabi Special Menu',
            min: 10,
            max: 120,
            price: 299,
            categories: '12 Categories & 40 Items',
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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFE4E5E6)),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 4.77,
            offset: Offset(0, 1.59),
          ),
        ],
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
                        Color(0xFF7D3EBC),
                        Color(0xFF6318AF),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(4),
                      bottomRight: Radius.circular(4),
                    ),
                  ),
                  child: Text(
                    'Popular',
                    style: GoogleFonts.lexend(
                      color: Colors.white,
                      fontSize: 12,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lexend(
                    color: Colors.black.withOpacity(0.2),
                    fontSize: 16,
                    height: 1,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.people, size: 14, color: Color(0xFF60666B)),
                        SizedBox(width: 6),
                        Text(
                          'Min $min - Max $max',
                          style: GoogleFonts.lexend(
                            color: Color(0xFF60666B),
                            fontSize: 12,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Starts at  ',
                          style: GoogleFonts.lexend(
                            color: Color(0xFF60666B),
                            fontSize: 16,
                            height: 1,
                          ),
                        ),
                        Text(
                          '₹$price',
                          style: GoogleFonts.lexend(
                            color: Colors.black.withOpacity(0.2),
                            fontSize: 16,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  categories,
                  style: GoogleFonts.lexend(
                    color: Color(0xFF6318AF),
                    fontSize: 14,
                    height: 1,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    _categoryItem('3 Live Counter'),
                    _categoryItem('4 main'),
                    _categoryItem('3 Desserts'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Text(
        text,
        style: GoogleFonts.lexend(
          color: Color(0xFF484C50),
          fontSize: 12,
          height: 1,
        ),
      ),
    );
  }

  Widget _cartImage(String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: ClipOval(
        child: Image.asset(
          image,
          width: 32,
          height: 32,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}