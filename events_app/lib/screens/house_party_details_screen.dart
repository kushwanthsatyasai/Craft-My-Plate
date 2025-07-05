import 'package:flutter/material.dart';

class HousePartyDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6FB),
      body: Stack(
        children: [
          // Header section with exact specifications
          Container(
            width: 375,
            height: 258,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 375,
                    height: 214,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 375,
                          height: 267.22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/house_party.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    height: 88,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, 1.00),
                        end: Alignment(0, -1),
                        colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.800000011920929)],
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 375,
                          height: 40,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 24,
                                top: 14.09,
                                child: Text(
                                  '9:41',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Inter',
                                    height: 0,
                                    letterSpacing: 0.07,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  padding: const EdgeInsets.all(6),
                                  decoration: ShapeDecoration(
                                    color: Colors.black.withOpacity(0.30000001192092896),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(44.44),
                                    ),
                                  ),
                                  child: Icon(Icons.arrow_back, color: Colors.white, size: 20),
                                ),
                              ),
                              const SizedBox(width: 75),
                              Text(
                                'House Party',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Lexend',
                                  height: 0,
                                ),
                              ),
                              const SizedBox(width: 75),
                              Container(width: 42, height: 42),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 172,
                  child: Container(
                    width: 375,
                    height: 86,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 12,
                                  top: 0,
                                  child: Container(
                                    width: 350.50,
                                    height: 42,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              left: 12,
                                              right: 12,
                                              bottom: 16,
                                            ),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(12),
                                                  topRight: Radius.circular(12),
                                                ),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Bulk Food Delivery',
                                                        style: TextStyle(
                                                          color: Color(0xFF6318AF),
                                                          fontSize: 14,
                                                          fontFamily: 'Lexend',
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(height: 8),
                                                const SizedBox(height: 8),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: Container(
                                            height: 34,
                                            padding: const EdgeInsets.all(8),
                                            decoration: ShapeDecoration(
                                              color: Colors.white.withOpacity(0.800000011920929),
                                              shape: RoundedRectangleBorder(
                                                side: BorderSide(width: 1, color: Color(0xFFE4E5E6)),
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        'Catering Service',
                                                        style: TextStyle(
                                                          color: Color(0xFF60666B),
                                                          fontSize: 14,
                                                          fontFamily: 'Lexend',
                                                          height: 0,
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
                                Positioned(
                                  left: 0,
                                  top: 42,
                                  child: Container(
                                    width: 375,
                                    height: 44,
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0F000000),
                                          blurRadius: 2,
                                          offset: Offset(0, 2),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 28,
                                          padding: const EdgeInsets.only(
                                            top: 10,
                                            left: 10,
                                            right: 10.23,
                                            bottom: 1,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: double.infinity,
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        padding: const EdgeInsets.symmetric(horizontal: 4),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: [
                                                            Text(
                                                              'ALL',
                                                              style: TextStyle(
                                                                color: Color(0xFFE70472),
                                                                fontSize: 12,
                                                                fontFamily: 'Lexend',
                                                                height: 0,
                                                              ),
                                                            ),
                                                            const SizedBox(width: 2),
                                                            Text(
                                                              '(8)',
                                                              style: TextStyle(
                                                                color: Color(0xFFE70472),
                                                                fontSize: 12,
                                                                fontFamily: 'Lexend',
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(height: 9),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 14.33, vertical: 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Breakfast',
                                                style: TextStyle(
                                                  color: Color(0xFF60666B),
                                                  fontSize: 12,
                                                  fontFamily: 'Lexend',
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 14.33, vertical: 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Lunch & Dinner',
                                                style: TextStyle(
                                                  color: Color(0xFF60666B),
                                                  fontSize: 12,
                                                  fontFamily: 'Lexend',
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 14.33, vertical: 10),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Snacks',
                                                style: TextStyle(
                                                  color: Color(0xFF60666B),
                                                  fontSize: 12,
                                                  fontFamily: 'Lexend',
                                                  height: 0,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Content section with food cards
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
                  _buildFoodCard(
                    image: 'assets/images/south_breakfast.png',
                    title: 'South Breakfast',
                    minPeople: 10,
                    maxPeople: 120,
                    price: 299,
                    categories: '12 Categories & 40 Items',
                    features: ['3 Live Counter', '4 main', '3 Desserts'],
                  ),
                  SizedBox(height: 16),
                  _buildFoodCard(
                    image: 'assets/images/samosa_plate.png',
                    title: 'Samosa Platter',
                    minPeople: 10,
                    maxPeople: 120,
                    price: 199,
                    categories: '8 Categories & 25 Items',
                    features: ['2 Live Counter', '3 main', '2 Desserts'],
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
                      _buildCartImage('assets/images/south_breakfast.png'),
                      _buildCartImage('assets/images/samosa_plate.png'),
                      SizedBox(width: 8),
                      Text(
                        '3 Platters',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 15.33,
                          fontFamily: 'Lexend',
                          height: 0,
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
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Lexend',
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

  Widget _buildFoodCard({
    required String image,
    required String title,
    required int minPeople,
    required int maxPeople,
    required int price,
    required String categories,
    required List<String> features,
  }) {
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
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Lexend',
                      height: 0,
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
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
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
                        Icon(Icons.people, size: 14, color: Color(0xFF60666B)),
                        SizedBox(width: 6),
                        Text(
                          'Min $minPeople - Max $maxPeople',
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
                          'Starts at  ',
                          style: TextStyle(
                            color: Color(0xFF60666B),
                            fontSize: 16,
                            fontFamily: 'Lexend',
                            height: 0,
                          ),
                        ),
                        Text(
                          '₹$price',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
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
                    height: 0,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  children: features.map((feature) => Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      feature,
                      style: TextStyle(
                        color: Color(0xFF484C50),
                        fontSize: 12,
                        fontFamily: 'Lexend',
                        height: 0,
                      ),
                    ),
                  )).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartImage(String image) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
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
