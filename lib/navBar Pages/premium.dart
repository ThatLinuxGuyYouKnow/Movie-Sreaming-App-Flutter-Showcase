import 'package:flutter/material.dart';

class SubscriptionScreen extends StatefulWidget {
  @override
  _SubscriptionScreenState createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  bool isMonthlySelected = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.04),
              Text(
                'Upgrade to Premium',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildPlanOption(
                        title: 'Monthly',
                        price: '\$9.99',
                        description: 'Billed Monthly',
                        isSelected: isMonthlySelected,
                        onTap: () {
                          setState(() {
                            isMonthlySelected = true;
                          });
                        },
                      ),
                      _buildPlanOption(
                        title: 'Annual',
                        price: '\$79.99',
                        description: 'Billed Annually',
                        isSelected: !isMonthlySelected,
                        onTap: () {
                          setState(() {
                            isMonthlySelected = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFeatureItem('Access to exclusive content'),
                    _buildFeatureItem(
                        'Watch on multiple devices simultaneously'),
                    _buildFeatureItem(
                        'High-definition and 4K streaming options'),
                    _buildFeatureItem('No ads or interruptions'),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                height: screenHeight * 0.09,
                width: screenWidth * 0.9,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Subscribe Now',
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 115, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanOption({
    required String title,
    required String price,
    required String description,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? Colors.orange : Colors.white,
          border: isSelected
              ? Border.all(color: Colors.black, width: 2)
              : Border.all(color: Colors.white, width: 2),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String feature) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.orange),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              feature,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
