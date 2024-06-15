import 'package:flutter/material.dart';

class ProfileAndSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.02),
              ListTile(
                leading: CircleAvatar(
                  radius: screenHeight * 0.03,
                  backgroundImage: const AssetImage(
                      'assets/profile.png'), // Replace with your profile image
                ),
                title: const Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(height: screenHeight * 0.02),
              _buildSettingsOption(context, 'Edit profile'),
              _buildSettingsOption(context, 'Change password'),
              _buildSettingsOption(context, 'Socials'),
              SizedBox(height: screenHeight * 0.02),
              ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                title: const Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                onTap: () {},
              ),
              _buildSettingsOption(context, 'App notifications',
                  hasSwitch: true),
              _buildSettingsOption(context, 'More'),
              _buildSettingsOption(context, 'Language & Time Zone'),
              const Spacer(),
              _buildSettingsOption(context, 'Sign Out'),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsOption(BuildContext context, String title,
      {bool hasSwitch = false}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      trailing: hasSwitch
          ? Switch(
              value: true,
              onChanged: (bool value) {},
              activeColor: Colors.deepOrange,
            )
          : const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.white,
            ),
      onTap: () {},
    );
  }
}
